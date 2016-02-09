.class public Lcom/facebook/android/Utility;
.super Landroid/app/Application;
.source "Utility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/android/Utility$FlushedInputStream;
    }
.end annotation


# static fields
.field private static MAX_IMAGE_DIMENSION:I

.field public static currentNotifications:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static httpclient:Landroid/net/http/AndroidHttpClient;

.field public static mAsyncRunner:Lcom/facebook/android/AsyncFacebookRunner;

.field public static model:Lcom/facebook/android/FriendsGetProfilePics;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/android/Utility;->httpclient:Landroid/net/http/AndroidHttpClient;

    .line 33
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/facebook/android/Utility;->currentNotifications:Ljava/util/Hashtable;

    .line 35
    const/16 v0, 0x2d0

    sput v0, Lcom/facebook/android/Utility;->MAX_IMAGE_DIMENSION:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 9
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 39
    const/4 v2, 0x0

    .line 41
    .local v2, "bm":Landroid/graphics/Bitmap;
    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 42
    .local v0, "aURL":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    .line 43
    .local v3, "conn":Ljava/net/URLConnection;
    invoke-virtual {v3}, Ljava/net/URLConnection;->connect()V

    .line 44
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 45
    .local v5, "is":Ljava/io/InputStream;
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 46
    .local v1, "bis":Ljava/io/BufferedInputStream;
    new-instance v6, Lcom/facebook/android/Utility$FlushedInputStream;

    invoke-direct {v6, v5}, Lcom/facebook/android/Utility$FlushedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 47
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 48
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_25} :catch_2f
    .catchall {:try_start_1 .. :try_end_25} :catchall_3d

    .line 52
    sget-object v6, Lcom/facebook/android/Utility;->httpclient:Landroid/net/http/AndroidHttpClient;

    if-eqz v6, :cond_2e

    .line 53
    sget-object v6, Lcom/facebook/android/Utility;->httpclient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v6}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 56
    .end local v0    # "aURL":Ljava/net/URL;
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "conn":Ljava/net/URLConnection;
    .end local v5    # "is":Ljava/io/InputStream;
    :cond_2e
    :goto_2e
    return-object v2

    .line 49
    :catch_2f
    move-exception v4

    .line 50
    .local v4, "e":Ljava/lang/Exception;
    :try_start_30
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_3d

    .line 52
    sget-object v6, Lcom/facebook/android/Utility;->httpclient:Landroid/net/http/AndroidHttpClient;

    if-eqz v6, :cond_2e

    .line 53
    sget-object v6, Lcom/facebook/android/Utility;->httpclient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v6}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_2e

    .line 51
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_3d
    move-exception v6

    .line 52
    sget-object v7, Lcom/facebook/android/Utility;->httpclient:Landroid/net/http/AndroidHttpClient;

    if-eqz v7, :cond_47

    .line 53
    sget-object v7, Lcom/facebook/android/Utility;->httpclient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v7}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 55
    :cond_47
    throw v6
.end method

.method public static getOrientation(Landroid/content/Context;Landroid/net/Uri;)I
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "photoUri"    # Landroid/net/Uri;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 149
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v8, [Ljava/lang/String;

    const-string v1, "orientation"

    aput-object v1, v2, v7

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 151
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eq v0, v8, :cond_1c

    .line 152
    const/4 v0, -0x1

    .line 156
    :goto_1b
    return v0

    .line 155
    :cond_1c
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 156
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_1b
.end method

.method public static scaleImage(Landroid/content/Context;Landroid/net/Uri;)[B
    .registers 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "photoUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v12

    .line 85
    .local v12, "is":Ljava/io/InputStream;
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 87
    .local v10, "dbo":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 94
    const/4 v2, 0x0

    invoke-static {v12, v2, v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 95
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 98
    invoke-static/range {p0 .. p1}, Lcom/facebook/android/Utility;->getOrientation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v15

    .line 100
    .local v15, "orientation":I
    const/16 v2, 0x5a

    if-eq v15, v2, :cond_25

    const/16 v2, 0x10e

    if-ne v15, v2, :cond_ab

    .line 101
    :cond_25
    iget v0, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v17, v0

    .line 102
    .local v17, "rotatedWidth":I
    iget v0, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v16, v0

    .line 109
    .local v16, "rotatedHeight":I
    :goto_2d
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v12

    .line 110
    sget v2, Lcom/facebook/android/Utility;->MAX_IMAGE_DIMENSION:I

    move/from16 v0, v17

    if-gt v0, v2, :cond_43

    sget v2, Lcom/facebook/android/Utility;->MAX_IMAGE_DIMENSION:I

    move/from16 v0, v16

    if-le v0, v2, :cond_b5

    .line 111
    :cond_43
    move/from16 v0, v17

    int-to-float v2, v0

    sget v3, Lcom/facebook/android/Utility;->MAX_IMAGE_DIMENSION:I

    int-to-float v3, v3

    div-float v19, v2, v3

    .line 112
    .local v19, "widthRatio":F
    move/from16 v0, v16

    int-to-float v2, v0

    sget v3, Lcom/facebook/android/Utility;->MAX_IMAGE_DIMENSION:I

    int-to-float v3, v3

    div-float v11, v2, v3

    .line 113
    .local v11, "heightRatio":F
    move/from16 v0, v19

    invoke-static {v0, v11}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 116
    .local v13, "maxRatio":F
    new-instance v14, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v14}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 117
    .local v14, "options":Landroid/graphics/BitmapFactory$Options;
    float-to-int v2, v13

    iput v2, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 118
    const/4 v2, 0x0

    invoke-static {v12, v2, v14}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 122
    .end local v11    # "heightRatio":F
    .end local v13    # "maxRatio":F
    .end local v14    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v19    # "widthRatio":F
    .local v1, "srcBitmap":Landroid/graphics/Bitmap;
    :goto_66
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 128
    if-lez v15, :cond_83

    .line 129
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 130
    .local v6, "matrix":Landroid/graphics/Matrix;
    int-to-float v2, v15

    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 132
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 135
    .end local v6    # "matrix":Landroid/graphics/Matrix;
    :cond_83
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v18

    .line 136
    .local v18, "type":Ljava/lang/String;
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 137
    .local v9, "baos":Ljava/io/ByteArrayOutputStream;
    const-string v2, "image/png"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ba

    .line 138
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 142
    :cond_a3
    :goto_a3
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 143
    .local v8, "bMapArray":[B
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 144
    return-object v8

    .line 104
    .end local v1    # "srcBitmap":Landroid/graphics/Bitmap;
    .end local v8    # "bMapArray":[B
    .end local v9    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v16    # "rotatedHeight":I
    .end local v17    # "rotatedWidth":I
    .end local v18    # "type":Ljava/lang/String;
    :cond_ab
    iget v0, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v17, v0

    .line 105
    .restart local v17    # "rotatedWidth":I
    iget v0, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v16, v0

    .restart local v16    # "rotatedHeight":I
    goto/16 :goto_2d

    .line 120
    :cond_b5
    invoke-static {v12}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .restart local v1    # "srcBitmap":Landroid/graphics/Bitmap;
    goto :goto_66

    .line 139
    .restart local v9    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v18    # "type":Ljava/lang/String;
    :cond_ba
    const-string v2, "image/jpg"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ce

    const-string v2, "image/jpeg"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a3

    .line 140
    :cond_ce
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_a3
.end method
