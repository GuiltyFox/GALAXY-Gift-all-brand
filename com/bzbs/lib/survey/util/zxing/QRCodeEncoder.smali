.class public Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;
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
    .line 41
    const-class v0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->TAG:Ljava/lang/String;

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
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->activity:Landroid/app/Activity;

    .line 56
    iput p3, p0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->dimension:I

    .line 57
    iput-boolean p4, p0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->useVCard:Z

    .line 58
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "com.google.zxing.client.android.ENCODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 60
    invoke-direct {p0, p2}, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->encodeContentsFromZXingIntent(Landroid/content/Intent;)Z

    .line 64
    :cond_19
    :goto_19
    return-void

    .line 61
    :cond_1a
    const-string/jumbo v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 62
    invoke-direct {p0, p2}, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->encodeContentsFromShareIntent(Landroid/content/Intent;)V

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
    .line 116
    const-string/jumbo v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 117
    invoke-direct {p0, p1}, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->encodeFromStreamExtra(Landroid/content/Intent;)V

    .line 121
    :goto_c
    return-void

    .line 119
    :cond_d
    invoke-direct {p0, p1}, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->encodeFromTextExtras(Landroid/content/Intent;)V

    goto :goto_c
.end method

.method private encodeContentsFromZXingIntent(Landroid/content/Intent;)Z
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 86
    const-string/jumbo v4, "ENCODE_FORMAT"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "formatString":Ljava/lang/String;
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->format:Lcom/google/zxing/BarcodeFormat;

    .line 88
    if-eqz v1, :cond_13

    .line 90
    :try_start_d
    invoke-static {v1}, Lcom/google/zxing/BarcodeFormat;->valueOf(Ljava/lang/String;)Lcom/google/zxing/BarcodeFormat;

    move-result-object v4

    iput-object v4, p0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->format:Lcom/google/zxing/BarcodeFormat;
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_13} :catch_60

    .line 95
    :cond_13
    :goto_13
    iget-object v4, p0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->format:Lcom/google/zxing/BarcodeFormat;

    if-eqz v4, :cond_1d

    iget-object v4, p0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->format:Lcom/google/zxing/BarcodeFormat;

    sget-object v5, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    if-ne v4, v5, :cond_42

    .line 96
    :cond_1d
    const-string/jumbo v4, "ENCODE_TYPE"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "type":Ljava/lang/String;
    if-eqz v2, :cond_2c

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2d

    .line 110
    .end local v2    # "type":Ljava/lang/String;
    :cond_2c
    :goto_2c
    return v3

    .line 100
    .restart local v2    # "type":Ljava/lang/String;
    :cond_2d
    sget-object v4, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    iput-object v4, p0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->format:Lcom/google/zxing/BarcodeFormat;

    .line 101
    invoke-direct {p0, p1, v2}, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->encodeQRCodeContents(Landroid/content/Intent;Ljava/lang/String;)V

    .line 110
    .end local v2    # "type":Ljava/lang/String;
    :cond_34
    :goto_34
    iget-object v4, p0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->contents:Ljava/lang/String;

    if-eqz v4, :cond_2c

    iget-object v4, p0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->contents:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2c

    const/4 v3, 0x1

    goto :goto_2c

    .line 103
    :cond_42
    const-string/jumbo v4, "ENCODE_DATA"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "data":Ljava/lang/String;
    if-eqz v0, :cond_34

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_34

    .line 105
    iput-object v0, p0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->contents:Ljava/lang/String;

    .line 106
    iput-object v0, p0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->displayContents:Ljava/lang/String;

    .line 107
    iget-object v4, p0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->activity:Landroid/app/Activity;

    sget v5, Lcom/bzbs/lib/survey/R$string;->contents_text:I

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->title:Ljava/lang/String;

    goto :goto_34

    .line 91
    .end local v0    # "data":Ljava/lang/String;
    :catch_60
    move-exception v4

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
    .line 161
    sget-object v11, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    iput-object v11, p0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->format:Lcom/google/zxing/BarcodeFormat;

    .line 162
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 163
    .local v2, "bundle":Landroid/os/Bundle;
    if-nez v2, :cond_13

    .line 164
    new-instance v11, Lcom/google/zxing/WriterException;

    const-string/jumbo v12, "No extras"

    invoke-direct {v11, v12}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 166
    :cond_13
    const-string/jumbo v11, "android.intent.extra.STREAM"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    .line 167
    .local v8, "uri":Landroid/net/Uri;
    if-nez v8, :cond_27

    .line 168
    new-instance v11, Lcom/google/zxing/WriterException;

    const-string/jumbo v12, "No EXTRA_STREAM"

    invoke-direct {v11, v12}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 173
    :cond_27
    :try_start_27
    iget-object v11, p0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->activity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v7

    .line 174
    .local v7, "stream":Ljava/io/InputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 175
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v11, 0x800

    new-array v1, v11, [B

    .line 177
    .local v1, "buffer":[B
    :goto_3a
    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "bytesRead":I
    if-lez v3, :cond_4c

    .line 178
    const/4 v11, 0x0

    invoke-virtual {v0, v1, v11, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_44} :catch_45

    goto :goto_3a

    .line 182
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buffer":[B
    .end local v3    # "bytesRead":I
    .end local v7    # "stream":Ljava/io/InputStream;
    :catch_45
    move-exception v4

    .line 183
    .local v4, "ioe":Ljava/io/IOException;
    new-instance v11, Lcom/google/zxing/WriterException;

    invoke-direct {v11, v4}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/Throwable;)V

    throw v11

    .line 180
    .end local v4    # "ioe":Ljava/io/IOException;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "buffer":[B
    .restart local v3    # "bytesRead":I
    .restart local v7    # "stream":Ljava/io/InputStream;
    :cond_4c
    :try_start_4c
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    .line 181
    .local v9, "vcard":[B
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    array-length v12, v9

    const-string/jumbo v13, "UTF-8"

    invoke-direct {v10, v9, v11, v12, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_5a} :catch_45

    .line 185
    .local v10, "vcardString":Ljava/lang/String;
    sget-object v11, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "Encoding share intent content:"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    sget-object v11, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->TAG:Ljava/lang/String;

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    new-instance v6, Lcom/google/zxing/Result;

    const/4 v11, 0x0

    sget-object v12, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v6, v10, v9, v11, v12}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 188
    .local v6, "result":Lcom/google/zxing/Result;
    invoke-static {v6}, Lcom/google/zxing/client/result/ResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v5

    .line 189
    .local v5, "parsedResult":Lcom/google/zxing/client/result/ParsedResult;
    instance-of v11, v5, Lcom/google/zxing/client/result/AddressBookParsedResult;

    if-nez v11, :cond_80

    .line 190
    new-instance v11, Lcom/google/zxing/WriterException;

    const-string/jumbo v12, "Result was not an address"

    invoke-direct {v11, v12}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 192
    :cond_80
    check-cast v5, Lcom/google/zxing/client/result/AddressBookParsedResult;

    .end local v5    # "parsedResult":Lcom/google/zxing/client/result/ParsedResult;
    invoke-direct {p0, v5}, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->encodeQRCodeContents(Lcom/google/zxing/client/result/AddressBookParsedResult;)V

    .line 193
    iget-object v11, p0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->contents:Ljava/lang/String;

    if-eqz v11, :cond_91

    iget-object v11, p0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->contents:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_9a

    .line 194
    :cond_91
    new-instance v11, Lcom/google/zxing/WriterException;

    const-string/jumbo v12, "No content to encode"

    invoke-direct {v11, v12}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 196
    :cond_9a
    return-void
.end method

.method private encodeFromTextExtras(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 125
    const-string/jumbo v2, "android.intent.extra.TEXT"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/lib/survey/util/zxing/ContactEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "theContents":Ljava/lang/String;
    if-nez v1, :cond_37

    .line 127
    const-string/jumbo v2, "android.intent.extra.HTML_TEXT"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/lib/survey/util/zxing/ContactEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 129
    if-nez v1, :cond_37

    .line 130
    const-string/jumbo v2, "android.intent.extra.SUBJECT"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/lib/survey/util/zxing/ContactEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    if-nez v1, :cond_37

    .line 132
    const-string/jumbo v2, "android.intent.extra.EMAIL"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "emails":[Ljava/lang/String;
    if-eqz v0, :cond_48

    .line 134
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Lcom/bzbs/lib/survey/util/zxing/ContactEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 143
    .end local v0    # "emails":[Ljava/lang/String;
    :cond_37
    :goto_37
    if-eqz v1, :cond_3f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4c

    .line 144
    :cond_3f
    new-instance v2, Lcom/google/zxing/WriterException;

    const-string/jumbo v3, "Empty EXTRA_TEXT"

    invoke-direct {v2, v3}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 136
    .restart local v0    # "emails":[Ljava/lang/String;
    :cond_48
    const-string/jumbo v1, "?"

    goto :goto_37

    .line 146
    .end local v0    # "emails":[Ljava/lang/String;
    :cond_4c
    iput-object v1, p0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->contents:Ljava/lang/String;

    .line 148
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    iput-object v2, p0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->format:Lcom/google/zxing/BarcodeFormat;

    .line 149
    const-string/jumbo v2, "android.intent.extra.SUBJECT"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 150
    const-string/jumbo v2, "android.intent.extra.SUBJECT"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->displayContents:Ljava/lang/String;

    .line 156
    :goto_64
    iget-object v2, p0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->activity:Landroid/app/Activity;

    sget v3, Lcom/bzbs/lib/survey/R$string;->contents_text:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->title:Ljava/lang/String;

    .line 157
    return-void

    .line 151
    :cond_6f
    const-string/jumbo v2, "android.intent.extra.TITLE"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 152
    const-string/jumbo v2, "android.intent.extra.TITLE"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->displayContents:Ljava/lang/String;

    goto :goto_64

    .line 154
    :cond_82
    iget-object v2, p0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->contents:Ljava/lang/String;

    iput-object v2, p0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->displayContents:Ljava/lang/String;

    goto :goto_64
.end method

.method private encodeQRCodeContents(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 21
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 199
    const-string/jumbo v2, "TEXT_TYPE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 200
    const-string/jumbo v2, "ENCODE_DATA"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 201
    .local v11, "data":Ljava/lang/String;
    if-eqz v11, :cond_32

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_32

    .line 202
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->contents:Ljava/lang/String;

    .line 203
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->displayContents:Ljava/lang/String;

    .line 204
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->activity:Landroid/app/Activity;

    sget v4, Lcom/bzbs/lib/survey/R$string;->contents_text:I

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->title:Ljava/lang/String;

    .line 271
    .end local v11    # "data":Ljava/lang/String;
    :cond_32
    :goto_32
    return-void

    .line 206
    :cond_33
    const-string/jumbo v2, "EMAIL_TYPE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 207
    const-string/jumbo v2, "ENCODE_DATA"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/lib/survey/util/zxing/ContactEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 208
    .restart local v11    # "data":Ljava/lang/String;
    if-eqz v11, :cond_32

    .line 209
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

    iput-object v2, v0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->contents:Ljava/lang/String;

    .line 210
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->displayContents:Ljava/lang/String;

    .line 211
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->activity:Landroid/app/Activity;

    sget v4, Lcom/bzbs/lib/survey/R$string;->contents_email:I

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->title:Ljava/lang/String;

    goto :goto_32

    .line 213
    .end local v11    # "data":Ljava/lang/String;
    :cond_78
    const-string/jumbo v2, "PHONE_TYPE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c2

    .line 214
    const-string/jumbo v2, "ENCODE_DATA"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/lib/survey/util/zxing/ContactEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 215
    .restart local v11    # "data":Ljava/lang/String;
    if-eqz v11, :cond_32

    .line 216
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

    iput-object v2, v0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->contents:Ljava/lang/String;

    .line 217
    invoke-static {v11}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->displayContents:Ljava/lang/String;

    .line 218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->activity:Landroid/app/Activity;

    sget v4, Lcom/bzbs/lib/survey/R$string;->contents_phone:I

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->title:Ljava/lang/String;

    goto/16 :goto_32

    .line 220
    .end local v11    # "data":Ljava/lang/String;
    :cond_c2
    const-string/jumbo v2, "SMS_TYPE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10c

    .line 221
    const-string/jumbo v2, "ENCODE_DATA"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/lib/survey/util/zxing/ContactEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 222
    .restart local v11    # "data":Ljava/lang/String;
    if-eqz v11, :cond_32

    .line 223
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

    iput-object v2, v0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->contents:Ljava/lang/String;

    .line 224
    invoke-static {v11}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->displayContents:Ljava/lang/String;

    .line 225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->activity:Landroid/app/Activity;

    sget v4, Lcom/bzbs/lib/survey/R$string;->contents_sms:I

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->title:Ljava/lang/String;

    goto/16 :goto_32

    .line 227
    .end local v11    # "data":Ljava/lang/String;
    :cond_10c
    const-string/jumbo v2, "CONTACT_TYPE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1cf

    .line 229
    const-string/jumbo v2, "ENCODE_DATA"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    .line 230
    .local v10, "bundle":Landroid/os/Bundle;
    if-eqz v10, :cond_32

    .line 232
    const-string/jumbo v2, "name"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 233
    .local v15, "name":Ljava/lang/String;
    const-string/jumbo v2, "company"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 234
    .local v3, "organization":Ljava/lang/String;
    const-string/jumbo v2, "postal"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 235
    .local v9, "address":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    sget-object v2, Lcom/bzbs/lib/survey/util/zxing/Contents;->PHONE_KEYS:[Ljava/lang/String;

    array-length v2, v2

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 236
    .local v5, "phones":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/16 v17, 0x0

    .local v17, "x":I
    :goto_141
    sget-object v2, Lcom/bzbs/lib/survey/util/zxing/Contents;->PHONE_KEYS:[Ljava/lang/String;

    array-length v2, v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_156

    .line 237
    sget-object v2, Lcom/bzbs/lib/survey/util/zxing/Contents;->PHONE_KEYS:[Ljava/lang/String;

    aget-object v2, v2, v17

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 236
    add-int/lit8 v17, v17, 0x1

    goto :goto_141

    .line 239
    :cond_156
    new-instance v6, Ljava/util/ArrayList;

    sget-object v2, Lcom/bzbs/lib/survey/util/zxing/Contents;->EMAIL_KEYS:[Ljava/lang/String;

    array-length v2, v2

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 240
    .local v6, "emails":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/16 v17, 0x0

    :goto_160
    sget-object v2, Lcom/bzbs/lib/survey/util/zxing/Contents;->EMAIL_KEYS:[Ljava/lang/String;

    array-length v2, v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_175

    .line 241
    sget-object v2, Lcom/bzbs/lib/survey/util/zxing/Contents;->EMAIL_KEYS:[Ljava/lang/String;

    aget-object v2, v2, v17

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 240
    add-int/lit8 v17, v17, 0x1

    goto :goto_160

    .line 243
    :cond_175
    const-string/jumbo v2, "URL_KEY"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 244
    .local v16, "url":Ljava/lang/String;
    if-nez v16, :cond_1c4

    const/4 v7, 0x0

    .line 245
    .local v7, "urls":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :goto_17f
    const-string/jumbo v2, "NOTE_KEY"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 247
    .local v8, "note":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->useVCard:Z

    if-eqz v2, :cond_1c9

    new-instance v1, Lcom/bzbs/lib/survey/util/zxing/VCardContactEncoder;

    invoke-direct {v1}, Lcom/bzbs/lib/survey/util/zxing/VCardContactEncoder;-><init>()V

    .line 248
    .local v1, "mecardEncoder":Lcom/bzbs/lib/survey/util/zxing/ContactEncoder;
    :goto_191
    invoke-static {v15}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v9}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-virtual/range {v1 .. v8}, Lcom/bzbs/lib/survey/util/zxing/ContactEncoder;->encode(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 250
    .local v12, "encoded":[Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v12, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_32

    .line 251
    const/4 v2, 0x0

    aget-object v2, v12, v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->contents:Ljava/lang/String;

    .line 252
    const/4 v2, 0x1

    aget-object v2, v12, v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->displayContents:Ljava/lang/String;

    .line 253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->activity:Landroid/app/Activity;

    sget v4, Lcom/bzbs/lib/survey/R$string;->contents_contact:I

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->title:Ljava/lang/String;

    goto/16 :goto_32

    .line 244
    .end local v1    # "mecardEncoder":Lcom/bzbs/lib/survey/util/zxing/ContactEncoder;
    .end local v7    # "urls":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v8    # "note":Ljava/lang/String;
    .end local v12    # "encoded":[Ljava/lang/String;
    :cond_1c4
    invoke-static/range {v16 .. v16}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    goto :goto_17f

    .line 247
    .restart local v7    # "urls":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v8    # "note":Ljava/lang/String;
    :cond_1c9
    new-instance v1, Lcom/bzbs/lib/survey/util/zxing/MECARDContactEncoder;

    invoke-direct {v1}, Lcom/bzbs/lib/survey/util/zxing/MECARDContactEncoder;-><init>()V

    goto :goto_191

    .line 258
    .end local v3    # "organization":Ljava/lang/String;
    .end local v5    # "phones":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v6    # "emails":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v7    # "urls":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v8    # "note":Ljava/lang/String;
    .end local v9    # "address":Ljava/lang/String;
    .end local v10    # "bundle":Landroid/os/Bundle;
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "url":Ljava/lang/String;
    .end local v17    # "x":I
    :cond_1cf
    const-string/jumbo v2, "LOCATION_TYPE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 259
    const-string/jumbo v2, "ENCODE_DATA"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    .line 260
    .restart local v10    # "bundle":Landroid/os/Bundle;
    if-eqz v10, :cond_32

    .line 262
    const-string/jumbo v2, "LAT"

    const v4, 0x7f7fffff

    invoke-virtual {v10, v2, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v13

    .line 263
    .local v13, "latitude":F
    const-string/jumbo v2, "LONG"

    const v4, 0x7f7fffff

    invoke-virtual {v10, v2, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v14

    .line 264
    .local v14, "longitude":F
    const v2, 0x7f7fffff

    cmpl-float v2, v13, v2

    if-eqz v2, :cond_32

    const v2, 0x7f7fffff

    cmpl-float v2, v14, v2

    if-eqz v2, :cond_32

    .line 265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "geo:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x2c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->contents:Ljava/lang/String;

    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->displayContents:Ljava/lang/String;

    .line 267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->activity:Landroid/app/Activity;

    sget v4, Lcom/bzbs/lib/survey/R$string;->contents_location:I

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->title:Ljava/lang/String;

    goto/16 :goto_32
.end method

.method private encodeQRCodeContents(Lcom/google/zxing/client/result/AddressBookParsedResult;)V
    .registers 12
    .param p1, "contact"    # Lcom/google/zxing/client/result/AddressBookParsedResult;

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x1

    .line 274
    iget-boolean v1, p0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->useVCard:Z

    if-eqz v1, :cond_50

    new-instance v0, Lcom/bzbs/lib/survey/util/zxing/VCardContactEncoder;

    invoke-direct {v0}, Lcom/bzbs/lib/survey/util/zxing/VCardContactEncoder;-><init>()V

    .line 275
    .local v0, "encoder":Lcom/bzbs/lib/survey/util/zxing/ContactEncoder;
    :goto_b
    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->toIterable([Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getOrg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getAddresses()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->toIterable([Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getPhoneNumbers()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->toIterable([Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getEmails()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->toIterable([Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v5

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/bzbs/lib/survey/util/zxing/ContactEncoder;->encode(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 277
    .local v8, "encoded":[Ljava/lang/String;
    aget-object v1, v8, v9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4f

    .line 278
    const/4 v1, 0x0

    aget-object v1, v8, v1

    iput-object v1, p0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->contents:Ljava/lang/String;

    .line 279
    aget-object v1, v8, v9

    iput-object v1, p0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->displayContents:Ljava/lang/String;

    .line 280
    iget-object v1, p0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->activity:Landroid/app/Activity;

    sget v2, Lcom/bzbs/lib/survey/R$string;->contents_contact:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->title:Ljava/lang/String;

    .line 282
    :cond_4f
    return-void

    .line 274
    .end local v0    # "encoder":Lcom/bzbs/lib/survey/util/zxing/ContactEncoder;
    .end local v8    # "encoded":[Ljava/lang/String;
    :cond_50
    new-instance v0, Lcom/bzbs/lib/survey/util/zxing/MECARDContactEncoder;

    invoke-direct {v0}, Lcom/bzbs/lib/survey/util/zxing/MECARDContactEncoder;-><init>()V

    goto :goto_b
.end method

.method private static guessAppropriateEncoding(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 4
    .param p0, "contents"    # Ljava/lang/CharSequence;

    .prologue
    .line 323
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 324
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0xff

    if-le v1, v2, :cond_13

    .line 325
    const-string/jumbo v1, "UTF-8"

    .line 328
    :goto_12
    return-object v1

    .line 323
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 328
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
    .line 285
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
    .line 289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->contents:Ljava/lang/String;

    .line 290
    .local v2, "contentsToEncode":Ljava/lang/String;
    if-nez v2, :cond_8

    .line 291
    const/4 v7, 0x0

    .line 318
    :goto_7
    return-object v7

    .line 293
    :cond_8
    const/4 v6, 0x0

    .line 294
    .local v6, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    invoke-static {v2}, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->guessAppropriateEncoding(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    .line 295
    .local v15, "encoding":Ljava/lang/String;
    if-eqz v15, :cond_1b

    .line 296
    new-instance v6, Ljava/util/EnumMap;

    .end local v6    # "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    const-class v1, Lcom/google/zxing/EncodeHintType;

    invoke-direct {v6, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 297
    .restart local v6    # "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    sget-object v1, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    invoke-interface {v6, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    :cond_1b
    :try_start_1b
    new-instance v1, Lcom/google/zxing/MultiFormatWriter;

    invoke-direct {v1}, Lcom/google/zxing/MultiFormatWriter;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->format:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->dimension:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->dimension:I

    invoke-virtual/range {v1 .. v6}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    :try_end_2f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_2f} :catch_59

    move-result-object v18

    .line 306
    .local v18, "result":Lcom/google/zxing/common/BitMatrix;
    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v10

    .line 307
    .local v10, "width":I
    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v14

    .line 308
    .local v14, "height":I
    mul-int v1, v10, v14

    new-array v8, v1, [I

    .line 309
    .local v8, "pixels":[I
    const/16 v20, 0x0

    .local v20, "y":I
    :goto_3e
    move/from16 v0, v20

    if-ge v0, v14, :cond_61

    .line 310
    mul-int v17, v20, v10

    .line 311
    .local v17, "offset":I
    const/16 v19, 0x0

    .local v19, "x":I
    :goto_46
    move/from16 v0, v19

    if-ge v0, v10, :cond_5e

    .line 312
    add-int v3, v17, v19

    invoke-virtual/range {v18 .. v20}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v1

    if-eqz v1, :cond_5c

    const/high16 v1, -0x1000000

    :goto_54
    aput v1, v8, v3

    .line 311
    add-int/lit8 v19, v19, 0x1

    goto :goto_46

    .line 302
    .end local v8    # "pixels":[I
    .end local v10    # "width":I
    .end local v14    # "height":I
    .end local v17    # "offset":I
    .end local v18    # "result":Lcom/google/zxing/common/BitMatrix;
    .end local v19    # "x":I
    .end local v20    # "y":I
    :catch_59
    move-exception v16

    .line 304
    .local v16, "iae":Ljava/lang/IllegalArgumentException;
    const/4 v7, 0x0

    goto :goto_7

    .line 312
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

    .line 309
    :cond_5e
    add-int/lit8 v20, v20, 0x1

    goto :goto_3e

    .line 316
    .end local v17    # "offset":I
    .end local v19    # "x":I
    :cond_61
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v14, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 317
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
    .line 67
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->contents:Ljava/lang/String;

    return-object v0
.end method

.method getDisplayContents()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->displayContents:Ljava/lang/String;

    return-object v0
.end method

.method getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->title:Ljava/lang/String;

    return-object v0
.end method

.method isUseVCard()Z
    .registers 2

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->useVCard:Z

    return v0
.end method
