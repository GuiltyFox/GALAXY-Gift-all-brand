.class public Lic/buzzebeeslib/util/image/ImageThreadLoader;
.super Ljava/lang/Object;
.source "ImageThreadLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/util/image/ImageThreadLoader$ImageLoadedListener;,
        Lic/buzzebeeslib/util/image/ImageThreadLoader$QueueItem;,
        Lic/buzzebeeslib/util/image/ImageThreadLoader$QueueRunner;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageThreadLoader"


# instance fields
.field private final Cache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private final Queue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lic/buzzebeeslib/util/image/ImageThreadLoader$QueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;

.field private runner:Lic/buzzebeeslib/util/image/ImageThreadLoader$QueueRunner;

.field private thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/util/image/ImageThreadLoader;->Cache:Ljava/util/HashMap;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/util/image/ImageThreadLoader;->Queue:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/util/image/ImageThreadLoader;->handler:Landroid/os/Handler;

    .line 41
    new-instance v0, Lic/buzzebeeslib/util/image/ImageThreadLoader$QueueRunner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lic/buzzebeeslib/util/image/ImageThreadLoader$QueueRunner;-><init>(Lic/buzzebeeslib/util/image/ImageThreadLoader;Lic/buzzebeeslib/util/image/ImageThreadLoader$QueueRunner;)V

    iput-object v0, p0, Lic/buzzebeeslib/util/image/ImageThreadLoader;->runner:Lic/buzzebeeslib/util/image/ImageThreadLoader$QueueRunner;

    .line 45
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lic/buzzebeeslib/util/image/ImageThreadLoader;->runner:Lic/buzzebeeslib/util/image/ImageThreadLoader$QueueRunner;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lic/buzzebeeslib/util/image/ImageThreadLoader;->thread:Ljava/lang/Thread;

    .line 46
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/util/image/ImageThreadLoader;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lic/buzzebeeslib/util/image/ImageThreadLoader;->Queue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lic/buzzebeeslib/util/image/ImageThreadLoader;)Ljava/util/HashMap;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lic/buzzebeeslib/util/image/ImageThreadLoader;->Cache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2(Lic/buzzebeeslib/util/image/ImageThreadLoader;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lic/buzzebeeslib/util/image/ImageThreadLoader;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static readBitmapFromNetwork(Ljava/net/URL;)Landroid/graphics/Bitmap;
    .registers 10
    .param p0, "url"    # Ljava/net/URL;

    .prologue
    .line 151
    const/4 v5, 0x0

    .line 152
    .local v5, "is":Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 153
    .local v0, "bis":Ljava/io/BufferedInputStream;
    const/4 v2, 0x0

    .line 155
    .local v2, "bmp":Landroid/graphics/Bitmap;
    :try_start_3
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    .line 156
    .local v3, "conn":Ljava/net/URLConnection;
    invoke-virtual {v3}, Ljava/net/URLConnection;->connect()V

    .line 157
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 158
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_13
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_13} :catch_23
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_13} :catch_3f
    .catchall {:try_start_3 .. :try_end_13} :catchall_5b

    .line 159
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .local v1, "bis":Ljava/io/BufferedInputStream;
    :try_start_13
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_16
    .catch Ljava/net/MalformedURLException; {:try_start_13 .. :try_end_16} :catch_80
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_7d
    .catchall {:try_start_13 .. :try_end_16} :catchall_7a

    move-result-object v2

    .line 166
    if-eqz v5, :cond_1c

    .line 167
    :try_start_19
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 168
    :cond_1c
    if-eqz v1, :cond_78

    .line 169
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_21} :catch_70

    move-object v0, v1

    .line 174
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "conn":Ljava/net/URLConnection;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    :cond_22
    :goto_22
    return-object v2

    .line 160
    :catch_23
    move-exception v4

    .line 161
    .local v4, "e":Ljava/net/MalformedURLException;
    :goto_24
    :try_start_24
    const-string v6, "ImageThreadLoader"

    const-string v7, "Bad ad URL"

    invoke-static {v6, v7}, Lic/buzzebeeslib/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_5b

    .line 166
    if-eqz v5, :cond_30

    .line 167
    :try_start_2d
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 168
    :cond_30
    if-eqz v0, :cond_22

    .line 169
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_35} :catch_36

    goto :goto_22

    .line 170
    :catch_36
    move-exception v4

    .line 171
    .local v4, "e":Ljava/io/IOException;
    const-string v6, "ImageThreadLoader"

    const-string v7, "Error closing stream."

    invoke-static {v6, v7}, Lic/buzzebeeslib/util/LogUtil;->LogW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22

    .line 162
    .end local v4    # "e":Ljava/io/IOException;
    :catch_3f
    move-exception v4

    .line 163
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_40
    :try_start_40
    const-string v6, "ImageThreadLoader"

    const-string v7, "Could not get remote ad image"

    invoke-static {v6, v7}, Lic/buzzebeeslib/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_5b

    .line 166
    if-eqz v5, :cond_4c

    .line 167
    :try_start_49
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 168
    :cond_4c
    if-eqz v0, :cond_22

    .line 169
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_51} :catch_52

    goto :goto_22

    .line 170
    :catch_52
    move-exception v4

    .line 171
    const-string v6, "ImageThreadLoader"

    const-string v7, "Error closing stream."

    invoke-static {v6, v7}, Lic/buzzebeeslib/util/LogUtil;->LogW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22

    .line 164
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_5b
    move-exception v6

    .line 166
    :goto_5c
    if-eqz v5, :cond_61

    .line 167
    :try_start_5e
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 168
    :cond_61
    if-eqz v0, :cond_66

    .line 169
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_66} :catch_67

    .line 173
    :cond_66
    :goto_66
    throw v6

    .line 170
    :catch_67
    move-exception v4

    .line 171
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v7, "ImageThreadLoader"

    const-string v8, "Error closing stream."

    invoke-static {v7, v8}, Lic/buzzebeeslib/util/LogUtil;->LogW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_66

    .line 170
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "conn":Ljava/net/URLConnection;
    :catch_70
    move-exception v4

    .line 171
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v6, "ImageThreadLoader"

    const-string v7, "Error closing stream."

    invoke-static {v6, v7}, Lic/buzzebeeslib/util/LogUtil;->LogW(Ljava/lang/String;Ljava/lang/String;)V

    .end local v4    # "e":Ljava/io/IOException;
    :cond_78
    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_22

    .line 164
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    :catchall_7a
    move-exception v6

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_5c

    .line 162
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    :catch_7d
    move-exception v4

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_40

    .line 160
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    :catch_80
    move-exception v4

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_24
.end method


# virtual methods
.method public loadImage(Ljava/lang/String;Lic/buzzebeeslib/util/image/ImageThreadLoader$ImageLoadedListener;)Landroid/graphics/Bitmap;
    .registers 8
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "listener"    # Lic/buzzebeeslib/util/image/ImageThreadLoader$ImageLoadedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 116
    iget-object v3, p0, Lic/buzzebeeslib/util/image/ImageThreadLoader;->Cache:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 117
    iget-object v3, p0, Lic/buzzebeeslib/util/image/ImageThreadLoader;->Cache:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 118
    .local v1, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v1, :cond_1a

    .line 119
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 135
    .end local v1    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :cond_19
    :goto_19
    return-object v2

    .line 123
    :cond_1a
    new-instance v0, Lic/buzzebeeslib/util/image/ImageThreadLoader$QueueItem;

    invoke-direct {v0, p0, v2}, Lic/buzzebeeslib/util/image/ImageThreadLoader$QueueItem;-><init>(Lic/buzzebeeslib/util/image/ImageThreadLoader;Lic/buzzebeeslib/util/image/ImageThreadLoader$QueueItem;)V

    .line 124
    .local v0, "item":Lic/buzzebeeslib/util/image/ImageThreadLoader$QueueItem;
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v3, v0, Lic/buzzebeeslib/util/image/ImageThreadLoader$QueueItem;->url:Ljava/net/URL;

    .line 125
    iput-object p2, v0, Lic/buzzebeeslib/util/image/ImageThreadLoader$QueueItem;->listener:Lic/buzzebeeslib/util/image/ImageThreadLoader$ImageLoadedListener;

    .line 126
    iget-object v3, p0, Lic/buzzebeeslib/util/image/ImageThreadLoader;->Queue:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v3, p0, Lic/buzzebeeslib/util/image/ImageThreadLoader;->thread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v3

    sget-object v4, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v3, v4, :cond_3d

    .line 130
    iget-object v3, p0, Lic/buzzebeeslib/util/image/ImageThreadLoader;->thread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_19

    .line 131
    :cond_3d
    iget-object v3, p0, Lic/buzzebeeslib/util/image/ImageThreadLoader;->thread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v3

    sget-object v4, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v3, v4, :cond_19

    .line 132
    new-instance v3, Ljava/lang/Thread;

    iget-object v4, p0, Lic/buzzebeeslib/util/image/ImageThreadLoader;->runner:Lic/buzzebeeslib/util/image/ImageThreadLoader$QueueRunner;

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, p0, Lic/buzzebeeslib/util/image/ImageThreadLoader;->thread:Ljava/lang/Thread;

    .line 133
    iget-object v3, p0, Lic/buzzebeeslib/util/image/ImageThreadLoader;->thread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_19
.end method
