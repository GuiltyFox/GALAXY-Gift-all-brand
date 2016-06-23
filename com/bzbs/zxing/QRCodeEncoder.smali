.class public Lcom/bzbs/zxing/QRCodeEncoder;
.super Ljava/lang/Object;
.source "QRCodeEncoder.java"


# static fields
.field private static final BLACK:I = -0x1000000

.field private static final TAG:Ljava/lang/String;

.field private static final WHITE:I = -0x1


# instance fields
.field private final activity:Landroid/app/Activity;

.field private contents:Ljava/lang/String;

.field private final dimension:I

.field private displayContents:Ljava/lang/String;

.field private format:Lcom/google/zxing/BarcodeFormat;

.field private title:Ljava/lang/String;

.field private final useVCard:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const-class v0, Lcom/bzbs/zxing/QRCodeEncoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/zxing/QRCodeEncoder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/Intent;IZ)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "dimension"    # I
    .param p4, "useVCard"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/bzbs/zxing/QRCodeEncoder;->activity:Landroid/app/Activity;

    .line 55
    iput p3, p0, Lcom/bzbs/zxing/QRCodeEncoder;->dimension:I

    .line 56
    iput-boolean p4, p0, Lcom/bzbs/zxing/QRCodeEncoder;->useVCard:Z

    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "com.google.zxing.client.android.ENCODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 59
    invoke-direct {p0, p2}, Lcom/bzbs/zxing/QRCodeEncoder;->encodeContentsFromZXingIntent(Landroid/content/Intent;)Z

    .line 63
    :cond_19
    :goto_19
    return-void

    .line 60
    :cond_1a
    const-string/jumbo v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 61
    invoke-direct {p0, p2}, Lcom/bzbs/zxing/QRCodeEncoder;->encodeContentsFromShareIntent(Landroid/content/Intent;)V

    goto :goto_19
.end method

.method private encodeContentsFromShareIntent(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 119
    const-string/jumbo v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 120
    invoke-direct {p0, p1}, Lcom/bzbs/zxing/QRCodeEncoder;->encodeFromStreamExtra(Landroid/content/Intent;)V

    .line 124
    :goto_c
    return-void

    .line 122
    :cond_d
    invoke-direct {p0, p1}, Lcom/bzbs/zxing/QRCodeEncoder;->encodeFromTextExtras(Landroid/content/Intent;)V

    goto :goto_c
.end method

.method private encodeContentsFromZXingIntent(Landroid/content/Intent;)Z
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 85
    const-string/jumbo v5, "ENCODE_FORMAT"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "formatString":Ljava/lang/String;
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/bzbs/zxing/QRCodeEncoder;->format:Lcom/google/zxing/BarcodeFormat;

    .line 87
    if-eqz v2, :cond_13

    .line 89
    :try_start_d
    invoke-static {v2}, Lcom/google/zxing/BarcodeFormat;->valueOf(Ljava/lang/String;)Lcom/google/zxing/BarcodeFormat;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/zxing/QRCodeEncoder;->format:Lcom/google/zxing/BarcodeFormat;
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_13} :catch_80

    .line 94
    :cond_13
    :goto_13
    iget-object v5, p0, Lcom/bzbs/zxing/QRCodeEncoder;->format:Lcom/google/zxing/BarcodeFormat;

    if-eqz v5, :cond_1d

    iget-object v5, p0, Lcom/bzbs/zxing/QRCodeEncoder;->format:Lcom/google/zxing/BarcodeFormat;

    sget-object v6, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    if-ne v5, v6, :cond_42

    .line 95
    :cond_1d
    const-string/jumbo v5, "ENCODE_TYPE"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, "type":Ljava/lang/String;
    if-eqz v3, :cond_2c

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2d

    .line 113
    .end local v3    # "type":Ljava/lang/String;
    :cond_2c
    :goto_2c
    return v4

    .line 99
    .restart local v3    # "type":Ljava/lang/String;
    :cond_2d
    sget-object v5, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    iput-object v5, p0, Lcom/bzbs/zxing/QRCodeEncoder;->format:Lcom/google/zxing/BarcodeFormat;

    .line 100
    invoke-direct {p0, p1, v3}, Lcom/bzbs/zxing/QRCodeEncoder;->encodeQRCodeContents(Landroid/content/Intent;Ljava/lang/String;)V

    .line 113
    .end local v3    # "type":Ljava/lang/String;
    :cond_34
    :goto_34
    iget-object v5, p0, Lcom/bzbs/zxing/QRCodeEncoder;->contents:Ljava/lang/String;

    if-eqz v5, :cond_2c

    iget-object v5, p0, Lcom/bzbs/zxing/QRCodeEncoder;->contents:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2c

    const/4 v4, 0x1

    goto :goto_2c

    .line 102
    :cond_42
    const-string/jumbo v5, "ENCODE_DATA"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "data":Ljava/lang/String;
    if-eqz v0, :cond_34

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_34

    .line 104
    iput-object v0, p0, Lcom/bzbs/zxing/QRCodeEncoder;->contents:Ljava/lang/String;

    .line 105
    iput-object v0, p0, Lcom/bzbs/zxing/QRCodeEncoder;->displayContents:Ljava/lang/String;

    .line 107
    :try_start_55
    iget-object v5, p0, Lcom/bzbs/zxing/QRCodeEncoder;->activity:Landroid/app/Activity;

    const v6, 0x7f0903b0

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/zxing/QRCodeEncoder;->title:Ljava/lang/String;
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_60} :catch_61

    goto :goto_34

    .line 108
    :catch_61
    move-exception v1

    .line 109
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/bzbs/zxing/QRCodeEncoder;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "encodeContentsFromZXingIntent|Exception := "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34

    .line 90
    .end local v0    # "data":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_80
    move-exception v5

    goto :goto_13
.end method

.method private encodeFromStreamExtra(Landroid/content/Intent;)V
    .registers 16
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 169
    sget-object v11, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    iput-object v11, p0, Lcom/bzbs/zxing/QRCodeEncoder;->format:Lcom/google/zxing/BarcodeFormat;

    .line 170
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 171
    .local v2, "bundle":Landroid/os/Bundle;
    if-nez v2, :cond_13

    .line 172
    new-instance v11, Lcom/google/zxing/WriterException;

    const-string/jumbo v12, "No extras"

    invoke-direct {v11, v12}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 174
    :cond_13
    const-string/jumbo v11, "android.intent.extra.STREAM"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    .line 175
    .local v8, "uri":Landroid/net/Uri;
    if-nez v8, :cond_27

    .line 176
    new-instance v11, Lcom/google/zxing/WriterException;

    const-string/jumbo v12, "No EXTRA_STREAM"

    invoke-direct {v11, v12}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 181
    :cond_27
    :try_start_27
    iget-object v11, p0, Lcom/bzbs/zxing/QRCodeEncoder;->activity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v7

    .line 182
    .local v7, "stream":Ljava/io/InputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 183
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v11, 0x800

    new-array v1, v11, [B

    .line 185
    .local v1, "buffer":[B
    :goto_3a
    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "bytesRead":I
    if-lez v3, :cond_4c

    .line 186
    const/4 v11, 0x0

    invoke-virtual {v0, v1, v11, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_44} :catch_45

    goto :goto_3a

    .line 190
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buffer":[B
    .end local v3    # "bytesRead":I
    .end local v7    # "stream":Ljava/io/InputStream;
    :catch_45
    move-exception v4

    .line 191
    .local v4, "ioe":Ljava/io/IOException;
    new-instance v11, Lcom/google/zxing/WriterException;

    invoke-direct {v11, v4}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/Throwable;)V

    throw v11

    .line 188
    .end local v4    # "ioe":Ljava/io/IOException;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "buffer":[B
    .restart local v3    # "bytesRead":I
    .restart local v7    # "stream":Ljava/io/InputStream;
    :cond_4c
    :try_start_4c
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    .line 189
    .local v9, "vcard":[B
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    array-length v12, v9

    const-string/jumbo v13, "UTF-8"

    invoke-direct {v10, v9, v11, v12, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_5a} :catch_45

    .line 193
    .local v10, "vcardString":Ljava/lang/String;
    sget-object v11, Lcom/bzbs/zxing/QRCodeEncoder;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "Encoding share intent content:"

    invoke-static {v11, v12}, Lcom/bzbs/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    sget-object v11, Lcom/bzbs/zxing/QRCodeEncoder;->TAG:Ljava/lang/String;

    invoke-static {v11, v10}, Lcom/bzbs/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    new-instance v6, Lcom/google/zxing/Result;

    const/4 v11, 0x0

    sget-object v12, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v6, v10, v9, v11, v12}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 196
    .local v6, "result":Lcom/google/zxing/Result;
    invoke-static {v6}, Lcom/google/zxing/client/result/ResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v5

    .line 197
    .local v5, "parsedResult":Lcom/google/zxing/client/result/ParsedResult;
    instance-of v11, v5, Lcom/google/zxing/client/result/AddressBookParsedResult;

    if-nez v11, :cond_80

    .line 198
    new-instance v11, Lcom/google/zxing/WriterException;

    const-string/jumbo v12, "Result was not an address"

    invoke-direct {v11, v12}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 200
    :cond_80
    check-cast v5, Lcom/google/zxing/client/result/AddressBookParsedResult;

    .end local v5    # "parsedResult":Lcom/google/zxing/client/result/ParsedResult;
    invoke-direct {p0, v5}, Lcom/bzbs/zxing/QRCodeEncoder;->encodeQRCodeContents(Lcom/google/zxing/client/result/AddressBookParsedResult;)V

    .line 201
    iget-object v11, p0, Lcom/bzbs/zxing/QRCodeEncoder;->contents:Ljava/lang/String;

    if-eqz v11, :cond_91

    iget-object v11, p0, Lcom/bzbs/zxing/QRCodeEncoder;->contents:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_9a

    .line 202
    :cond_91
    new-instance v11, Lcom/google/zxing/WriterException;

    const-string/jumbo v12, "No content to encode"

    invoke-direct {v11, v12}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 204
    :cond_9a
    return-void
.end method

.method private encodeFromTextExtras(Landroid/content/Intent;)V
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 128
    const-string/jumbo v3, "android.intent.extra.TEXT"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/zxing/ContactEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, "theContents":Ljava/lang/String;
    if-nez v2, :cond_37

    .line 130
    const-string/jumbo v3, "android.intent.extra.HTML_TEXT"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/zxing/ContactEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 132
    if-nez v2, :cond_37

    .line 133
    const-string/jumbo v3, "android.intent.extra.SUBJECT"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/zxing/ContactEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 134
    if-nez v2, :cond_37

    .line 135
    const-string/jumbo v3, "android.intent.extra.EMAIL"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "emails":[Ljava/lang/String;
    if-eqz v1, :cond_48

    .line 137
    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-static {v3}, Lcom/bzbs/zxing/ContactEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 146
    .end local v1    # "emails":[Ljava/lang/String;
    :cond_37
    :goto_37
    if-eqz v2, :cond_3f

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4c

    .line 147
    :cond_3f
    new-instance v3, Lcom/google/zxing/WriterException;

    const-string/jumbo v4, "Empty EXTRA_TEXT"

    invoke-direct {v3, v4}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 139
    .restart local v1    # "emails":[Ljava/lang/String;
    :cond_48
    const-string/jumbo v2, "?"

    goto :goto_37

    .line 149
    .end local v1    # "emails":[Ljava/lang/String;
    :cond_4c
    iput-object v2, p0, Lcom/bzbs/zxing/QRCodeEncoder;->contents:Ljava/lang/String;

    .line 151
    sget-object v3, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    iput-object v3, p0, Lcom/bzbs/zxing/QRCodeEncoder;->format:Lcom/google/zxing/BarcodeFormat;

    .line 152
    const-string/jumbo v3, "android.intent.extra.SUBJECT"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 153
    const-string/jumbo v3, "android.intent.extra.SUBJECT"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/bzbs/zxing/QRCodeEncoder;->displayContents:Ljava/lang/String;

    .line 161
    :goto_64
    :try_start_64
    iget-object v3, p0, Lcom/bzbs/zxing/QRCodeEncoder;->activity:Landroid/app/Activity;

    const v4, 0x7f0903b0

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/bzbs/zxing/QRCodeEncoder;->title:Ljava/lang/String;
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_6f} :catch_88

    .line 165
    :goto_6f
    return-void

    .line 154
    :cond_70
    const-string/jumbo v3, "android.intent.extra.TITLE"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_83

    .line 155
    const-string/jumbo v3, "android.intent.extra.TITLE"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/bzbs/zxing/QRCodeEncoder;->displayContents:Ljava/lang/String;

    goto :goto_64

    .line 157
    :cond_83
    iget-object v3, p0, Lcom/bzbs/zxing/QRCodeEncoder;->contents:Ljava/lang/String;

    iput-object v3, p0, Lcom/bzbs/zxing/QRCodeEncoder;->displayContents:Ljava/lang/String;

    goto :goto_64

    .line 162
    :catch_88
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/bzbs/zxing/QRCodeEncoder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "encodeFromTextExtras|Exception := "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6f
.end method

.method private encodeQRCodeContents(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 23
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 207
    const-string/jumbo v2, "TEXT_TYPE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 208
    const-string/jumbo v2, "ENCODE_DATA"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 209
    .local v11, "data":Ljava/lang/String;
    if-eqz v11, :cond_33

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_33

    .line 210
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/bzbs/zxing/QRCodeEncoder;->contents:Ljava/lang/String;

    .line 211
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/bzbs/zxing/QRCodeEncoder;->displayContents:Ljava/lang/String;

    .line 214
    :try_start_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/zxing/QRCodeEncoder;->activity:Landroid/app/Activity;

    const v4, 0x7f0903b0

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bzbs/zxing/QRCodeEncoder;->title:Ljava/lang/String;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_33} :catch_34

    .line 314
    .end local v11    # "data":Ljava/lang/String;
    :cond_33
    :goto_33
    return-void

    .line 215
    .restart local v11    # "data":Ljava/lang/String;
    :catch_34
    move-exception v12

    .line 216
    .local v12, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/bzbs/zxing/QRCodeEncoder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "encodeQRCodeContents|Exception := "

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33

    .line 220
    .end local v11    # "data":Ljava/lang/String;
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_57
    const-string/jumbo v2, "EMAIL_TYPE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c1

    .line 221
    const-string/jumbo v2, "ENCODE_DATA"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/zxing/ContactEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 222
    .restart local v11    # "data":Ljava/lang/String;
    if-eqz v11, :cond_33

    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mailto:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bzbs/zxing/QRCodeEncoder;->contents:Ljava/lang/String;

    .line 224
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/bzbs/zxing/QRCodeEncoder;->displayContents:Ljava/lang/String;

    .line 227
    :try_start_8d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/zxing/QRCodeEncoder;->activity:Landroid/app/Activity;

    const v4, 0x7f0903ac

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bzbs/zxing/QRCodeEncoder;->title:Ljava/lang/String;
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_9c} :catch_9d

    goto :goto_33

    .line 228
    :catch_9d
    move-exception v12

    .line 229
    .restart local v12    # "e":Ljava/lang/Exception;
    sget-object v2, Lcom/bzbs/zxing/QRCodeEncoder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "encodeQRCodeContents|Exception := "

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_33

    .line 233
    .end local v11    # "data":Ljava/lang/String;
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_c1
    const-string/jumbo v2, "PHONE_TYPE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_130

    .line 234
    const-string/jumbo v2, "ENCODE_DATA"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/zxing/ContactEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 235
    .restart local v11    # "data":Ljava/lang/String;
    if-eqz v11, :cond_33

    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tel:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bzbs/zxing/QRCodeEncoder;->contents:Ljava/lang/String;

    .line 237
    invoke-static {v11}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bzbs/zxing/QRCodeEncoder;->displayContents:Ljava/lang/String;

    .line 240
    :try_start_fb
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/zxing/QRCodeEncoder;->activity:Landroid/app/Activity;

    const v4, 0x7f0903ae

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bzbs/zxing/QRCodeEncoder;->title:Ljava/lang/String;
    :try_end_10a
    .catch Ljava/lang/Exception; {:try_start_fb .. :try_end_10a} :catch_10c

    goto/16 :goto_33

    .line 241
    :catch_10c
    move-exception v12

    .line 242
    .restart local v12    # "e":Ljava/lang/Exception;
    sget-object v2, Lcom/bzbs/zxing/QRCodeEncoder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "encodeQRCodeContents|Exception := "

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_33

    .line 246
    .end local v11    # "data":Ljava/lang/String;
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_130
    const-string/jumbo v2, "SMS_TYPE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19f

    .line 247
    const-string/jumbo v2, "ENCODE_DATA"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/zxing/ContactEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 248
    .restart local v11    # "data":Ljava/lang/String;
    if-eqz v11, :cond_33

    .line 249
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sms:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bzbs/zxing/QRCodeEncoder;->contents:Ljava/lang/String;

    .line 250
    invoke-static {v11}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bzbs/zxing/QRCodeEncoder;->displayContents:Ljava/lang/String;

    .line 253
    :try_start_16a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/zxing/QRCodeEncoder;->activity:Landroid/app/Activity;

    const v4, 0x7f0903af

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bzbs/zxing/QRCodeEncoder;->title:Ljava/lang/String;
    :try_end_179
    .catch Ljava/lang/Exception; {:try_start_16a .. :try_end_179} :catch_17b

    goto/16 :goto_33

    .line 254
    :catch_17b
    move-exception v12

    .line 255
    .restart local v12    # "e":Ljava/lang/Exception;
    sget-object v2, Lcom/bzbs/zxing/QRCodeEncoder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "encodeQRCodeContents|Exception := "

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_33

    .line 258
    .end local v11    # "data":Ljava/lang/String;
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_19f
    const-string/jumbo v2, "CONTACT_TYPE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_287

    .line 260
    const-string/jumbo v2, "ENCODE_DATA"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    .line 261
    .local v10, "bundle":Landroid/os/Bundle;
    if-eqz v10, :cond_33

    .line 263
    const-string/jumbo v2, "name"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 264
    .local v16, "name":Ljava/lang/String;
    const-string/jumbo v2, "company"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 265
    .local v3, "organization":Ljava/lang/String;
    const-string/jumbo v2, "postal"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 266
    .local v9, "address":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    sget-object v2, Lcom/bzbs/zxing/Contents;->PHONE_KEYS:[Ljava/lang/String;

    array-length v2, v2

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 267
    .local v5, "phones":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/16 v18, 0x0

    .local v18, "x":I
    :goto_1d4
    sget-object v2, Lcom/bzbs/zxing/Contents;->PHONE_KEYS:[Ljava/lang/String;

    array-length v2, v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_1e9

    .line 268
    sget-object v2, Lcom/bzbs/zxing/Contents;->PHONE_KEYS:[Ljava/lang/String;

    aget-object v2, v2, v18

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 267
    add-int/lit8 v18, v18, 0x1

    goto :goto_1d4

    .line 270
    :cond_1e9
    new-instance v6, Ljava/util/ArrayList;

    sget-object v2, Lcom/bzbs/zxing/Contents;->EMAIL_KEYS:[Ljava/lang/String;

    array-length v2, v2

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 271
    .local v6, "emails":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/16 v18, 0x0

    :goto_1f3
    sget-object v2, Lcom/bzbs/zxing/Contents;->EMAIL_KEYS:[Ljava/lang/String;

    array-length v2, v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_208

    .line 272
    sget-object v2, Lcom/bzbs/zxing/Contents;->EMAIL_KEYS:[Ljava/lang/String;

    aget-object v2, v2, v18

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 271
    add-int/lit8 v18, v18, 0x1

    goto :goto_1f3

    .line 274
    :cond_208
    const-string/jumbo v2, "URL_KEY"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 275
    .local v17, "url":Ljava/lang/String;
    if-nez v17, :cond_27c

    const/4 v7, 0x0

    .line 276
    .local v7, "urls":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :goto_212
    const-string/jumbo v2, "NOTE_KEY"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 278
    .local v8, "note":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/bzbs/zxing/QRCodeEncoder;->useVCard:Z

    if-eqz v2, :cond_281

    new-instance v1, Lcom/bzbs/zxing/VCardContactEncoder;

    invoke-direct {v1}, Lcom/bzbs/zxing/VCardContactEncoder;-><init>()V

    .line 279
    .local v1, "mecardEncoder":Lcom/bzbs/zxing/ContactEncoder;
    :goto_224
    invoke-static/range {v16 .. v16}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v9}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-virtual/range {v1 .. v8}, Lcom/bzbs/zxing/ContactEncoder;->encode(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 281
    .local v13, "encoded":[Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v13, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_33

    .line 282
    const/4 v2, 0x0

    aget-object v2, v13, v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bzbs/zxing/QRCodeEncoder;->contents:Ljava/lang/String;

    .line 283
    const/4 v2, 0x1

    aget-object v2, v13, v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bzbs/zxing/QRCodeEncoder;->displayContents:Ljava/lang/String;

    .line 286
    :try_start_247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/zxing/QRCodeEncoder;->activity:Landroid/app/Activity;

    const v4, 0x7f0903ab

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bzbs/zxing/QRCodeEncoder;->title:Ljava/lang/String;
    :try_end_256
    .catch Ljava/lang/Exception; {:try_start_247 .. :try_end_256} :catch_258

    goto/16 :goto_33

    .line 287
    :catch_258
    move-exception v12

    .line 288
    .restart local v12    # "e":Ljava/lang/Exception;
    sget-object v2, Lcom/bzbs/zxing/QRCodeEncoder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "encodeQRCodeContents|Exception := "

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_33

    .line 275
    .end local v1    # "mecardEncoder":Lcom/bzbs/zxing/ContactEncoder;
    .end local v7    # "urls":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v8    # "note":Ljava/lang/String;
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v13    # "encoded":[Ljava/lang/String;
    :cond_27c
    invoke-static/range {v17 .. v17}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    goto :goto_212

    .line 278
    .restart local v7    # "urls":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v8    # "note":Ljava/lang/String;
    :cond_281
    new-instance v1, Lcom/bzbs/zxing/MECARDContactEncoder;

    invoke-direct {v1}, Lcom/bzbs/zxing/MECARDContactEncoder;-><init>()V

    goto :goto_224

    .line 295
    .end local v3    # "organization":Ljava/lang/String;
    .end local v5    # "phones":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v6    # "emails":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v7    # "urls":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v8    # "note":Ljava/lang/String;
    .end local v9    # "address":Ljava/lang/String;
    .end local v10    # "bundle":Landroid/os/Bundle;
    .end local v16    # "name":Ljava/lang/String;
    .end local v17    # "url":Ljava/lang/String;
    .end local v18    # "x":I
    :cond_287
    const-string/jumbo v2, "LOCATION_TYPE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 296
    const-string/jumbo v2, "ENCODE_DATA"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    .line 297
    .restart local v10    # "bundle":Landroid/os/Bundle;
    if-eqz v10, :cond_33

    .line 299
    const-string/jumbo v2, "LAT"

    const v4, 0x7f7fffff

    invoke-virtual {v10, v2, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v14

    .line 300
    .local v14, "latitude":F
    const-string/jumbo v2, "LONG"

    const v4, 0x7f7fffff

    invoke-virtual {v10, v2, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v15

    .line 301
    .local v15, "longitude":F
    const v2, 0x7f7fffff

    cmpl-float v2, v14, v2

    if-eqz v2, :cond_33

    const v2, 0x7f7fffff

    cmpl-float v2, v15, v2

    if-eqz v2, :cond_33

    .line 302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "geo:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x2c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bzbs/zxing/QRCodeEncoder;->contents:Ljava/lang/String;

    .line 303
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bzbs/zxing/QRCodeEncoder;->displayContents:Ljava/lang/String;

    .line 306
    :try_start_2fd
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/zxing/QRCodeEncoder;->activity:Landroid/app/Activity;

    const v4, 0x7f0903ad

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bzbs/zxing/QRCodeEncoder;->title:Ljava/lang/String;
    :try_end_30c
    .catch Ljava/lang/Exception; {:try_start_2fd .. :try_end_30c} :catch_30e

    goto/16 :goto_33

    .line 307
    :catch_30e
    move-exception v12

    .line 308
    .restart local v12    # "e":Ljava/lang/Exception;
    sget-object v2, Lcom/bzbs/zxing/QRCodeEncoder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "encodeQRCodeContents|Exception := "

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_33
.end method

.method private encodeQRCodeContents(Lcom/google/zxing/client/result/AddressBookParsedResult;)V
    .registers 13
    .param p1, "contact"    # Lcom/google/zxing/client/result/AddressBookParsedResult;

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x1

    .line 317
    iget-boolean v1, p0, Lcom/bzbs/zxing/QRCodeEncoder;->useVCard:Z

    if-eqz v1, :cond_51

    new-instance v0, Lcom/bzbs/zxing/VCardContactEncoder;

    invoke-direct {v0}, Lcom/bzbs/zxing/VCardContactEncoder;-><init>()V

    .line 318
    .local v0, "encoder":Lcom/bzbs/zxing/ContactEncoder;
    :goto_b
    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/zxing/QRCodeEncoder;->toIterable([Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getOrg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getAddresses()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/zxing/QRCodeEncoder;->toIterable([Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getPhoneNumbers()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/bzbs/zxing/QRCodeEncoder;->toIterable([Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getEmails()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/bzbs/zxing/QRCodeEncoder;->toIterable([Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v5

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/bzbs/zxing/ContactEncoder;->encode(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 320
    .local v9, "encoded":[Ljava/lang/String;
    aget-object v1, v9, v10

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_50

    .line 321
    const/4 v1, 0x0

    aget-object v1, v9, v1

    iput-object v1, p0, Lcom/bzbs/zxing/QRCodeEncoder;->contents:Ljava/lang/String;

    .line 322
    aget-object v1, v9, v10

    iput-object v1, p0, Lcom/bzbs/zxing/QRCodeEncoder;->displayContents:Ljava/lang/String;

    .line 325
    :try_start_45
    iget-object v1, p0, Lcom/bzbs/zxing/QRCodeEncoder;->activity:Landroid/app/Activity;

    const v2, 0x7f0903ab

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/zxing/QRCodeEncoder;->title:Ljava/lang/String;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_50} :catch_57

    .line 331
    :cond_50
    :goto_50
    return-void

    .line 317
    .end local v0    # "encoder":Lcom/bzbs/zxing/ContactEncoder;
    .end local v9    # "encoded":[Ljava/lang/String;
    :cond_51
    new-instance v0, Lcom/bzbs/zxing/MECARDContactEncoder;

    invoke-direct {v0}, Lcom/bzbs/zxing/MECARDContactEncoder;-><init>()V

    goto :goto_b

    .line 326
    .restart local v0    # "encoder":Lcom/bzbs/zxing/ContactEncoder;
    .restart local v9    # "encoded":[Ljava/lang/String;
    :catch_57
    move-exception v8

    .line 327
    .local v8, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/bzbs/zxing/QRCodeEncoder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "encodeQRCodeContents|Exception := "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_50
.end method

.method private static guessAppropriateEncoding(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 4
    .param p0, "contents"    # Ljava/lang/CharSequence;

    .prologue
    .line 372
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 373
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0xff

    if-le v1, v2, :cond_13

    .line 374
    const-string/jumbo v1, "UTF-8"

    .line 377
    :goto_12
    return-object v1

    .line 372
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 377
    :cond_16
    const/4 v1, 0x0

    goto :goto_12
.end method

.method private static toIterable([Ljava/lang/String;)Ljava/lang/Iterable;
    .registers 2
    .param p0, "values"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 334
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_3
.end method


# virtual methods
.method public encodeAsBitmap()Landroid/graphics/Bitmap;
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 338
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/zxing/QRCodeEncoder;->contents:Ljava/lang/String;

    .line 339
    .local v2, "contentsToEncode":Ljava/lang/String;
    if-nez v2, :cond_8

    .line 340
    const/4 v7, 0x0

    .line 367
    :goto_7
    return-object v7

    .line 342
    :cond_8
    const/4 v6, 0x0

    .line 343
    .local v6, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    invoke-static {v2}, Lcom/bzbs/zxing/QRCodeEncoder;->guessAppropriateEncoding(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    .line 344
    .local v15, "encoding":Ljava/lang/String;
    if-eqz v15, :cond_1b

    .line 345
    new-instance v6, Ljava/util/EnumMap;

    .end local v6    # "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    const-class v1, Lcom/google/zxing/EncodeHintType;

    invoke-direct {v6, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 346
    .restart local v6    # "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    sget-object v1, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    invoke-interface {v6, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    :cond_1b
    :try_start_1b
    new-instance v1, Lcom/google/zxing/MultiFormatWriter;

    invoke-direct {v1}, Lcom/google/zxing/MultiFormatWriter;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bzbs/zxing/QRCodeEncoder;->format:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/bzbs/zxing/QRCodeEncoder;->dimension:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/bzbs/zxing/QRCodeEncoder;->dimension:I

    invoke-virtual/range {v1 .. v6}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    :try_end_2f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_2f} :catch_59

    move-result-object v18

    .line 355
    .local v18, "result":Lcom/google/zxing/common/BitMatrix;
    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v10

    .line 356
    .local v10, "width":I
    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v14

    .line 357
    .local v14, "height":I
    mul-int v1, v10, v14

    new-array v8, v1, [I

    .line 358
    .local v8, "pixels":[I
    const/16 v20, 0x0

    .local v20, "y":I
    :goto_3e
    move/from16 v0, v20

    if-ge v0, v14, :cond_61

    .line 359
    mul-int v17, v20, v10

    .line 360
    .local v17, "offset":I
    const/16 v19, 0x0

    .local v19, "x":I
    :goto_46
    move/from16 v0, v19

    if-ge v0, v10, :cond_5e

    .line 361
    add-int v3, v17, v19

    invoke-virtual/range {v18 .. v20}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v1

    if-eqz v1, :cond_5c

    const/high16 v1, -0x1000000

    :goto_54
    aput v1, v8, v3

    .line 360
    add-int/lit8 v19, v19, 0x1

    goto :goto_46

    .line 351
    .end local v8    # "pixels":[I
    .end local v10    # "width":I
    .end local v14    # "height":I
    .end local v17    # "offset":I
    .end local v18    # "result":Lcom/google/zxing/common/BitMatrix;
    .end local v19    # "x":I
    .end local v20    # "y":I
    :catch_59
    move-exception v16

    .line 353
    .local v16, "iae":Ljava/lang/IllegalArgumentException;
    const/4 v7, 0x0

    goto :goto_7

    .line 361
    .end local v16    # "iae":Ljava/lang/IllegalArgumentException;
    .restart local v8    # "pixels":[I
    .restart local v10    # "width":I
    .restart local v14    # "height":I
    .restart local v17    # "offset":I
    .restart local v18    # "result":Lcom/google/zxing/common/BitMatrix;
    .restart local v19    # "x":I
    .restart local v20    # "y":I
    :cond_5c
    const/4 v1, -0x1

    goto :goto_54

    .line 358
    :cond_5e
    add-int/lit8 v20, v20, 0x1

    goto :goto_3e

    .line 365
    .end local v17    # "offset":I
    .end local v19    # "x":I
    :cond_61
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v14, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 366
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v13, v10

    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto :goto_7
.end method

.method getContents()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/bzbs/zxing/QRCodeEncoder;->contents:Ljava/lang/String;

    return-object v0
.end method

.method getDisplayContents()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/bzbs/zxing/QRCodeEncoder;->displayContents:Ljava/lang/String;

    return-object v0
.end method

.method getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/bzbs/zxing/QRCodeEncoder;->title:Ljava/lang/String;

    return-object v0
.end method

.method isUseVCard()Z
    .registers 2

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/bzbs/zxing/QRCodeEncoder;->useVCard:Z

    return v0
.end method
