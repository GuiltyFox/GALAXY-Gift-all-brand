.class public Lcom/bzbs/zxing/QRCodeEncoder;
.super Ljava/lang/Object;
.source "QRCodeEncoder.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/app/Activity;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/google/zxing/BarcodeFormat;

.field private final g:I

.field private final h:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const-class v0, Lcom/bzbs/zxing/QRCodeEncoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/zxing/QRCodeEncoder;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/Intent;IZ)V
    .registers 7

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/bzbs/zxing/QRCodeEncoder;->b:Landroid/app/Activity;

    .line 55
    iput p3, p0, Lcom/bzbs/zxing/QRCodeEncoder;->g:I

    .line 56
    iput-boolean p4, p0, Lcom/bzbs/zxing/QRCodeEncoder;->h:Z

    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 58
    const-string/jumbo v1, "com.google.zxing.client.android.ENCODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 59
    invoke-direct {p0, p2}, Lcom/bzbs/zxing/QRCodeEncoder;->a(Landroid/content/Intent;)Z

    .line 63
    :cond_19
    :goto_19
    return-void

    .line 60
    :cond_1a
    const-string/jumbo v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 61
    invoke-direct {p0, p2}, Lcom/bzbs/zxing/QRCodeEncoder;->b(Landroid/content/Intent;)V

    goto :goto_19
.end method

.method private static a([Ljava/lang/String;)Ljava/lang/Iterable;
    .registers 2
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

.method private static a(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 372
    const/4 v0, 0x0

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
    const-string/jumbo v0, "UTF-8"

    .line 377
    :goto_12
    return-object v0

    .line 372
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 377
    :cond_16
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private a(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 14

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    .line 207
    const-string/jumbo v0, "TEXT_TYPE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 208
    const-string/jumbo v0, "ENCODE_DATA"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2c

    .line 210
    iput-object v0, p0, Lcom/bzbs/zxing/QRCodeEncoder;->c:Ljava/lang/String;

    .line 211
    iput-object v0, p0, Lcom/bzbs/zxing/QRCodeEncoder;->d:Ljava/lang/String;

    .line 214
    :try_start_21
    iget-object v0, p0, Lcom/bzbs/zxing/QRCodeEncoder;->b:Landroid/app/Activity;

    const v1, 0x7f090419

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/zxing/QRCodeEncoder;->e:Ljava/lang/String;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2c} :catch_2d

    .line 314
    :cond_2c
    :goto_2c
    return-void

    .line 215
    :catch_2d
    move-exception v0

    .line 216
    sget-object v1, Lcom/bzbs/zxing/QRCodeEncoder;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "encodeQRCodeContents|Exception := "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    .line 220
    :cond_4c
    const-string/jumbo v0, "EMAIL_TYPE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 221
    const-string/jumbo v0, "ENCODE_DATA"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/zxing/ContactEncoder;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 222
    if-eqz v0, :cond_2c

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mailto:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/zxing/QRCodeEncoder;->c:Ljava/lang/String;

    .line 224
    iput-object v0, p0, Lcom/bzbs/zxing/QRCodeEncoder;->d:Ljava/lang/String;

    .line 227
    :try_start_7a
    iget-object v0, p0, Lcom/bzbs/zxing/QRCodeEncoder;->b:Landroid/app/Activity;

    const v1, 0x7f090415

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/zxing/QRCodeEncoder;->e:Ljava/lang/String;
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_85} :catch_86

    goto :goto_2c

    .line 228
    :catch_86
    move-exception v0

    .line 229
    sget-object v1, Lcom/bzbs/zxing/QRCodeEncoder;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "encodeQRCodeContents|Exception := "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    .line 233
    :cond_a5
    const-string/jumbo v0, "PHONE_TYPE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_104

    .line 234
    const-string/jumbo v0, "ENCODE_DATA"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/zxing/ContactEncoder;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    if-eqz v0, :cond_2c

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/zxing/QRCodeEncoder;->c:Ljava/lang/String;

    .line 237
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/zxing/QRCodeEncoder;->d:Ljava/lang/String;

    .line 240
    :try_start_d7
    iget-object v0, p0, Lcom/bzbs/zxing/QRCodeEncoder;->b:Landroid/app/Activity;

    const v1, 0x7f090417

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/zxing/QRCodeEncoder;->e:Ljava/lang/String;
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_e2} :catch_e4

    goto/16 :goto_2c

    .line 241
    :catch_e4
    move-exception v0

    .line 242
    sget-object v1, Lcom/bzbs/zxing/QRCodeEncoder;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "encodeQRCodeContents|Exception := "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2c

    .line 246
    :cond_104
    const-string/jumbo v0, "SMS_TYPE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_163

    .line 247
    const-string/jumbo v0, "ENCODE_DATA"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/zxing/ContactEncoder;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    if-eqz v0, :cond_2c

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sms:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/zxing/QRCodeEncoder;->c:Ljava/lang/String;

    .line 250
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/zxing/QRCodeEncoder;->d:Ljava/lang/String;

    .line 253
    :try_start_136
    iget-object v0, p0, Lcom/bzbs/zxing/QRCodeEncoder;->b:Landroid/app/Activity;

    const v1, 0x7f090418

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/zxing/QRCodeEncoder;->e:Ljava/lang/String;
    :try_end_141
    .catch Ljava/lang/Exception; {:try_start_136 .. :try_end_141} :catch_143

    goto/16 :goto_2c

    .line 254
    :catch_143
    move-exception v0

    .line 255
    sget-object v1, Lcom/bzbs/zxing/QRCodeEncoder;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "encodeQRCodeContents|Exception := "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2c

    .line 258
    :cond_163
    const-string/jumbo v0, "CONTACT_TYPE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_230

    .line 260
    const-string/jumbo v0, "ENCODE_DATA"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 261
    if-eqz v1, :cond_2c

    .line 263
    const-string/jumbo v0, "name"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 264
    const-string/jumbo v0, "company"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 265
    const-string/jumbo v0, "postal"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 266
    new-instance v4, Ljava/util/ArrayList;

    sget-object v0, Lcom/bzbs/zxing/Contents;->a:[Ljava/lang/String;

    array-length v0, v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v8

    .line 267
    :goto_193
    sget-object v5, Lcom/bzbs/zxing/Contents;->a:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_1a6

    .line 268
    sget-object v5, Lcom/bzbs/zxing/Contents;->a:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 267
    add-int/lit8 v0, v0, 0x1

    goto :goto_193

    .line 270
    :cond_1a6
    new-instance v5, Ljava/util/ArrayList;

    sget-object v0, Lcom/bzbs/zxing/Contents;->c:[Ljava/lang/String;

    array-length v0, v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v8

    .line 271
    :goto_1af
    sget-object v6, Lcom/bzbs/zxing/Contents;->c:[Ljava/lang/String;

    array-length v6, v6

    if-ge v0, v6, :cond_1c2

    .line 272
    sget-object v6, Lcom/bzbs/zxing/Contents;->c:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 271
    add-int/lit8 v0, v0, 0x1

    goto :goto_1af

    .line 274
    :cond_1c2
    const-string/jumbo v0, "URL_KEY"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 275
    if-nez v0, :cond_225

    const/4 v6, 0x0

    .line 276
    :goto_1cc
    const-string/jumbo v0, "NOTE_KEY"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 278
    iget-boolean v0, p0, Lcom/bzbs/zxing/QRCodeEncoder;->h:Z

    if-eqz v0, :cond_22a

    new-instance v0, Lcom/bzbs/zxing/VCardContactEncoder;

    invoke-direct {v0}, Lcom/bzbs/zxing/VCardContactEncoder;-><init>()V

    .line 279
    :goto_1dc
    invoke-static {v3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v9}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual/range {v0 .. v7}, Lcom/bzbs/zxing/ContactEncoder;->a(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 281
    aget-object v1, v0, v10

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2c

    .line 282
    aget-object v1, v0, v8

    iput-object v1, p0, Lcom/bzbs/zxing/QRCodeEncoder;->c:Ljava/lang/String;

    .line 283
    aget-object v0, v0, v10

    iput-object v0, p0, Lcom/bzbs/zxing/QRCodeEncoder;->d:Ljava/lang/String;

    .line 286
    :try_start_1f8
    iget-object v0, p0, Lcom/bzbs/zxing/QRCodeEncoder;->b:Landroid/app/Activity;

    const v1, 0x7f090414

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/zxing/QRCodeEncoder;->e:Ljava/lang/String;
    :try_end_203
    .catch Ljava/lang/Exception; {:try_start_1f8 .. :try_end_203} :catch_205

    goto/16 :goto_2c

    .line 287
    :catch_205
    move-exception v0

    .line 288
    sget-object v1, Lcom/bzbs/zxing/QRCodeEncoder;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "encodeQRCodeContents|Exception := "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2c

    .line 275
    :cond_225
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    goto :goto_1cc

    .line 278
    :cond_22a
    new-instance v0, Lcom/bzbs/zxing/MECARDContactEncoder;

    invoke-direct {v0}, Lcom/bzbs/zxing/MECARDContactEncoder;-><init>()V

    goto :goto_1dc

    .line 295
    :cond_230
    const-string/jumbo v0, "LOCATION_TYPE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 296
    const-string/jumbo v0, "ENCODE_DATA"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 297
    if-eqz v0, :cond_2c

    .line 299
    const-string/jumbo v1, "LAT"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v1

    .line 300
    const-string/jumbo v2, "LONG"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 301
    cmpl-float v2, v1, v3

    if-eqz v2, :cond_2c

    cmpl-float v2, v0, v3

    if-eqz v2, :cond_2c

    .line 302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "geo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bzbs/zxing/QRCodeEncoder;->c:Ljava/lang/String;

    .line 303
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/zxing/QRCodeEncoder;->d:Ljava/lang/String;

    .line 306
    :try_start_292
    iget-object v0, p0, Lcom/bzbs/zxing/QRCodeEncoder;->b:Landroid/app/Activity;

    const v1, 0x7f090416

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/zxing/QRCodeEncoder;->e:Ljava/lang/String;
    :try_end_29d
    .catch Ljava/lang/Exception; {:try_start_292 .. :try_end_29d} :catch_29f

    goto/16 :goto_2c

    .line 307
    :catch_29f
    move-exception v0

    .line 308
    sget-object v1, Lcom/bzbs/zxing/QRCodeEncoder;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "encodeQRCodeContents|Exception := "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2c
.end method

.method private a(Lcom/google/zxing/client/result/AddressBookParsedResult;)V
    .registers 11

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 317
    iget-boolean v0, p0, Lcom/bzbs/zxing/QRCodeEncoder;->h:Z

    if-eqz v0, :cond_51

    new-instance v0, Lcom/bzbs/zxing/VCardContactEncoder;

    invoke-direct {v0}, Lcom/bzbs/zxing/VCardContactEncoder;-><init>()V

    .line 318
    :goto_b
    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->a()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/zxing/QRCodeEncoder;->a([Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->d()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/zxing/QRCodeEncoder;->a([Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->b()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/bzbs/zxing/QRCodeEncoder;->a([Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->c()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/bzbs/zxing/QRCodeEncoder;->a([Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v5

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/bzbs/zxing/ContactEncoder;->a(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 320
    aget-object v1, v0, v8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_50

    .line 321
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/bzbs/zxing/QRCodeEncoder;->c:Ljava/lang/String;

    .line 322
    aget-object v0, v0, v8

    iput-object v0, p0, Lcom/bzbs/zxing/QRCodeEncoder;->d:Ljava/lang/String;

    .line 325
    :try_start_45
    iget-object v0, p0, Lcom/bzbs/zxing/QRCodeEncoder;->b:Landroid/app/Activity;

    const v1, 0x7f090414

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/zxing/QRCodeEncoder;->e:Ljava/lang/String;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_50} :catch_57

    .line 331
    :cond_50
    :goto_50
    return-void

    .line 317
    :cond_51
    new-instance v0, Lcom/bzbs/zxing/MECARDContactEncoder;

    invoke-direct {v0}, Lcom/bzbs/zxing/MECARDContactEncoder;-><init>()V

    goto :goto_b

    .line 326
    :catch_57
    move-exception v0

    .line 327
    sget-object v1, Lcom/bzbs/zxing/QRCodeEncoder;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "encodeQRCodeContents|Exception := "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_50
.end method

.method private a(Landroid/content/Intent;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 85
    const-string/jumbo v1, "ENCODE_FORMAT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/bzbs/zxing/QRCodeEncoder;->f:Lcom/google/zxing/BarcodeFormat;

    .line 87
    if-eqz v1, :cond_13

    .line 89
    :try_start_d
    invoke-static {v1}, Lcom/google/zxing/BarcodeFormat;->valueOf(Ljava/lang/String;)Lcom/google/zxing/BarcodeFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/zxing/QRCodeEncoder;->f:Lcom/google/zxing/BarcodeFormat;
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_13} :catch_80

    .line 94
    :cond_13
    :goto_13
    iget-object v1, p0, Lcom/bzbs/zxing/QRCodeEncoder;->f:Lcom/google/zxing/BarcodeFormat;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/bzbs/zxing/QRCodeEncoder;->f:Lcom/google/zxing/BarcodeFormat;

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->l:Lcom/google/zxing/BarcodeFormat;

    if-ne v1, v2, :cond_42

    .line 95
    :cond_1d
    const-string/jumbo v1, "ENCODE_TYPE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2d

    .line 113
    :cond_2c
    :goto_2c
    return v0

    .line 99
    :cond_2d
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->l:Lcom/google/zxing/BarcodeFormat;

    iput-object v2, p0, Lcom/bzbs/zxing/QRCodeEncoder;->f:Lcom/google/zxing/BarcodeFormat;

    .line 100
    invoke-direct {p0, p1, v1}, Lcom/bzbs/zxing/QRCodeEncoder;->a(Landroid/content/Intent;Ljava/lang/String;)V

    .line 113
    :cond_34
    :goto_34
    iget-object v1, p0, Lcom/bzbs/zxing/QRCodeEncoder;->c:Ljava/lang/String;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/bzbs/zxing/QRCodeEncoder;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2c

    const/4 v0, 0x1

    goto :goto_2c

    .line 102
    :cond_42
    const-string/jumbo v1, "ENCODE_DATA"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    if-eqz v1, :cond_34

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_34

    .line 104
    iput-object v1, p0, Lcom/bzbs/zxing/QRCodeEncoder;->c:Ljava/lang/String;

    .line 105
    iput-object v1, p0, Lcom/bzbs/zxing/QRCodeEncoder;->d:Ljava/lang/String;

    .line 107
    :try_start_55
    iget-object v1, p0, Lcom/bzbs/zxing/QRCodeEncoder;->b:Landroid/app/Activity;

    const v2, 0x7f090419

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/zxing/QRCodeEncoder;->e:Ljava/lang/String;
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_60} :catch_61

    goto :goto_34

    .line 108
    :catch_61
    move-exception v1

    .line 109
    sget-object v2, Lcom/bzbs/zxing/QRCodeEncoder;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "encodeContentsFromZXingIntent|Exception := "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34

    .line 90
    :catch_80
    move-exception v1

    goto :goto_13
.end method

.method private b(Landroid/content/Intent;)V
    .registers 3

    .prologue
    .line 119
    const-string/jumbo v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 120
    invoke-direct {p0, p1}, Lcom/bzbs/zxing/QRCodeEncoder;->d(Landroid/content/Intent;)V

    .line 124
    :goto_c
    return-void

    .line 122
    :cond_d
    invoke-direct {p0, p1}, Lcom/bzbs/zxing/QRCodeEncoder;->c(Landroid/content/Intent;)V

    goto :goto_c
.end method

.method private c(Landroid/content/Intent;)V
    .registers 6

    .prologue
    .line 128
    const-string/jumbo v0, "android.intent.extra.TEXT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/zxing/ContactEncoder;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    if-nez v0, :cond_37

    .line 130
    const-string/jumbo v0, "android.intent.extra.HTML_TEXT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/zxing/ContactEncoder;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    if-nez v0, :cond_37

    .line 133
    const-string/jumbo v0, "android.intent.extra.SUBJECT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/zxing/ContactEncoder;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    if-nez v0, :cond_37

    .line 135
    const-string/jumbo v0, "android.intent.extra.EMAIL"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_48

    .line 137
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/bzbs/zxing/ContactEncoder;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    :cond_37
    :goto_37
    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4c

    .line 147
    :cond_3f
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string/jumbo v1, "Empty EXTRA_TEXT"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_48
    const-string/jumbo v0, "?"

    goto :goto_37

    .line 149
    :cond_4c
    iput-object v0, p0, Lcom/bzbs/zxing/QRCodeEncoder;->c:Ljava/lang/String;

    .line 151
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->l:Lcom/google/zxing/BarcodeFormat;

    iput-object v0, p0, Lcom/bzbs/zxing/QRCodeEncoder;->f:Lcom/google/zxing/BarcodeFormat;

    .line 152
    const-string/jumbo v0, "android.intent.extra.SUBJECT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 153
    const-string/jumbo v0, "android.intent.extra.SUBJECT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/zxing/QRCodeEncoder;->d:Ljava/lang/String;

    .line 161
    :goto_64
    :try_start_64
    iget-object v0, p0, Lcom/bzbs/zxing/QRCodeEncoder;->b:Landroid/app/Activity;

    const v1, 0x7f090419

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/zxing/QRCodeEncoder;->e:Ljava/lang/String;
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_6f} :catch_88

    .line 165
    :goto_6f
    return-void

    .line 154
    :cond_70
    const-string/jumbo v0, "android.intent.extra.TITLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 155
    const-string/jumbo v0, "android.intent.extra.TITLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/zxing/QRCodeEncoder;->d:Ljava/lang/String;

    goto :goto_64

    .line 157
    :cond_83
    iget-object v0, p0, Lcom/bzbs/zxing/QRCodeEncoder;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/bzbs/zxing/QRCodeEncoder;->d:Ljava/lang/String;

    goto :goto_64

    .line 162
    :catch_88
    move-exception v0

    .line 163
    sget-object v1, Lcom/bzbs/zxing/QRCodeEncoder;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "encodeFromTextExtras|Exception := "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6f
.end method

.method private d(Landroid/content/Intent;)V
    .registers 7

    .prologue
    .line 169
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->l:Lcom/google/zxing/BarcodeFormat;

    iput-object v0, p0, Lcom/bzbs/zxing/QRCodeEncoder;->f:Lcom/google/zxing/BarcodeFormat;

    .line 170
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 171
    if-nez v0, :cond_13

    .line 172
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string/jumbo v1, "No extras"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_13
    const-string/jumbo v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 175
    if-nez v0, :cond_27

    .line 176
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string/jumbo v1, "No EXTRA_STREAM"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_27
    :try_start_27
    iget-object v1, p0, Lcom/bzbs/zxing/QRCodeEncoder;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 182
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 183
    const/16 v2, 0x800

    new-array v2, v2, [B

    .line 185
    :goto_3a
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_4c

    .line 186
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_44} :catch_45

    goto :goto_3a

    .line 190
    :catch_45
    move-exception v0

    .line 191
    new-instance v1, Lcom/google/zxing/WriterException;

    invoke-direct {v1, v0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 188
    :cond_4c
    :try_start_4c
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 189
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    array-length v3, v0

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v1, v0, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_5a} :catch_45

    .line 193
    sget-object v2, Lcom/bzbs/zxing/QRCodeEncoder;->a:Ljava/lang/String;

    const-string/jumbo v3, "Encoding share intent content:"

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    sget-object v2, Lcom/bzbs/zxing/QRCodeEncoder;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/bzbs/util/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    new-instance v2, Lcom/google/zxing/Result;

    const/4 v3, 0x0

    sget-object v4, Lcom/google/zxing/BarcodeFormat;->l:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v2, v1, v0, v3, v4}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 196
    invoke-static {v2}, Lcom/google/zxing/client/result/ResultParser;->d(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v0

    .line 197
    instance-of v1, v0, Lcom/google/zxing/client/result/AddressBookParsedResult;

    if-nez v1, :cond_80

    .line 198
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string/jumbo v1, "Result was not an address"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_80
    check-cast v0, Lcom/google/zxing/client/result/AddressBookParsedResult;

    invoke-direct {p0, v0}, Lcom/bzbs/zxing/QRCodeEncoder;->a(Lcom/google/zxing/client/result/AddressBookParsedResult;)V

    .line 201
    iget-object v0, p0, Lcom/bzbs/zxing/QRCodeEncoder;->c:Ljava/lang/String;

    if-eqz v0, :cond_91

    iget-object v0, p0, Lcom/bzbs/zxing/QRCodeEncoder;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9a

    .line 202
    :cond_91
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string/jumbo v1, "No content to encode"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_9a
    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .registers 11

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 338
    iget-object v1, p0, Lcom/bzbs/zxing/QRCodeEncoder;->c:Ljava/lang/String;

    .line 339
    if-nez v1, :cond_8

    move-object v0, v6

    .line 367
    :goto_7
    return-object v0

    .line 343
    :cond_8
    invoke-static {v1}, Lcom/bzbs/zxing/QRCodeEncoder;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 344
    if-eqz v0, :cond_64

    .line 345
    new-instance v5, Ljava/util/EnumMap;

    const-class v2, Lcom/google/zxing/EncodeHintType;

    invoke-direct {v5, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 346
    sget-object v2, Lcom/google/zxing/EncodeHintType;->b:Lcom/google/zxing/EncodeHintType;

    invoke-interface {v5, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    :goto_1a
    :try_start_1a
    new-instance v0, Lcom/google/zxing/MultiFormatWriter;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatWriter;-><init>()V

    iget-object v2, p0, Lcom/bzbs/zxing/QRCodeEncoder;->f:Lcom/google/zxing/BarcodeFormat;

    iget v3, p0, Lcom/bzbs/zxing/QRCodeEncoder;->g:I

    iget v4, p0, Lcom/bzbs/zxing/QRCodeEncoder;->g:I

    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/MultiFormatWriter;->a(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    :try_end_28
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_28} :catch_4d

    move-result-object v5

    .line 355
    invoke-virtual {v5}, Lcom/google/zxing/common/BitMatrix;->f()I

    move-result v3

    .line 356
    invoke-virtual {v5}, Lcom/google/zxing/common/BitMatrix;->g()I

    move-result v7

    .line 357
    mul-int v0, v3, v7

    new-array v1, v0, [I

    move v4, v8

    .line 358
    :goto_36
    if-ge v4, v7, :cond_56

    .line 359
    mul-int v6, v4, v3

    move v2, v8

    .line 360
    :goto_3b
    if-ge v2, v3, :cond_52

    .line 361
    add-int v9, v6, v2

    invoke-virtual {v5, v2, v4}, Lcom/google/zxing/common/BitMatrix;->a(II)Z

    move-result v0

    if-eqz v0, :cond_50

    const/high16 v0, -0x1000000

    :goto_47
    aput v0, v1, v9

    .line 360
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3b

    .line 351
    :catch_4d
    move-exception v0

    move-object v0, v6

    .line 353
    goto :goto_7

    .line 361
    :cond_50
    const/4 v0, -0x1

    goto :goto_47

    .line 358
    :cond_52
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_36

    .line 365
    :cond_56
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    move v2, v8

    move v4, v8

    move v5, v8

    move v6, v3

    .line 366
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto :goto_7

    :cond_64
    move-object v5, v6

    goto :goto_1a
.end method
