.class final Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;
.super Ljava/lang/Object;
.source "ResponseCacheMiddleware.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/koushikdutta/async/http/cache/RawHeaders;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/koushikdutta/async/http/cache/RawHeaders;

.field private final e:Ljava/lang/String;

.field private final f:[Ljava/security/cert/Certificate;

.field private final g:[Ljava/security/cert/Certificate;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/koushikdutta/async/http/cache/RawHeaders;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/cache/RawHeaders;)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 587
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->a:Ljava/lang/String;

    .line 588
    iput-object p2, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    .line 589
    invoke-virtual {p3}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->c:Ljava/lang/String;

    .line 590
    iput-object p4, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->d:Lcom/koushikdutta/async/http/cache/RawHeaders;

    .line 603
    iput-object v1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->e:Ljava/lang/String;

    .line 604
    iput-object v1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->f:[Ljava/security/cert/Certificate;

    .line 605
    iput-object v1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->g:[Ljava/security/cert/Certificate;

    .line 607
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 10

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 552
    :try_start_7
    new-instance v1, Lcom/koushikdutta/async/http/cache/StrictLineReader;

    sget-object v0, Lcom/koushikdutta/async/util/Charsets;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v0}, Lcom/koushikdutta/async/http/cache/StrictLineReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_6a

    .line 553
    :try_start_e
    invoke-virtual {v1}, Lcom/koushikdutta/async/http/cache/StrictLineReader;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->a:Ljava/lang/String;

    .line 554
    invoke-virtual {v1}, Lcom/koushikdutta/async/http/cache/StrictLineReader;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->c:Ljava/lang/String;

    .line 555
    new-instance v0, Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/cache/RawHeaders;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    .line 556
    invoke-virtual {v1}, Lcom/koushikdutta/async/http/cache/StrictLineReader;->b()I

    move-result v2

    move v0, v3

    .line 557
    :goto_26
    if-ge v0, v2, :cond_34

    .line 558
    iget-object v4, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/cache/StrictLineReader;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/koushikdutta/async/http/cache/RawHeaders;->b(Ljava/lang/String;)V

    .line 557
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 561
    :cond_34
    new-instance v0, Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/cache/RawHeaders;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->d:Lcom/koushikdutta/async/http/cache/RawHeaders;

    .line 562
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->d:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/cache/StrictLineReader;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/http/cache/RawHeaders;->a(Ljava/lang/String;)V

    .line 563
    invoke-virtual {v1}, Lcom/koushikdutta/async/http/cache/StrictLineReader;->b()I

    move-result v2

    move v0, v3

    .line 564
    :goto_49
    if-ge v0, v2, :cond_57

    .line 565
    iget-object v4, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->d:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/cache/StrictLineReader;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/koushikdutta/async/http/cache/RawHeaders;->b(Ljava/lang/String;)V

    .line 564
    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    .line 577
    :cond_57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->e:Ljava/lang/String;

    .line 578
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->f:[Ljava/security/cert/Certificate;

    .line 579
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->g:[Ljava/security/cert/Certificate;
    :try_end_60
    .catchall {:try_start_e .. :try_end_60} :catchall_76

    .line 582
    new-array v0, v7, [Ljava/io/Closeable;

    aput-object v1, v0, v3

    aput-object p1, v0, v6

    invoke-static {v0}, Lcom/koushikdutta/async/util/StreamUtility;->a([Ljava/io/Closeable;)V

    .line 584
    return-void

    .line 582
    :catchall_6a
    move-exception v0

    move-object v1, v2

    :goto_6c
    new-array v2, v7, [Ljava/io/Closeable;

    aput-object v1, v2, v3

    aput-object p1, v2, v6

    invoke-static {v2}, Lcom/koushikdutta/async/util/StreamUtility;->a([Ljava/io/Closeable;)V

    throw v0

    :catchall_76
    move-exception v0

    goto :goto_6c
.end method

.method private a(Ljava/io/Writer;[Ljava/security/cert/Certificate;)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 662
    if-nez p2, :cond_a

    .line 663
    const-string/jumbo v0, "-1\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 676
    :cond_9
    return-void

    .line 667
    :cond_a
    :try_start_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, p2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 668
    array-length v1, p2

    :goto_26
    if-ge v0, v1, :cond_9

    aget-object v2, p2, v0

    .line 669
    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v2

    .line 670
    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 671
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_a .. :try_end_49} :catch_4c

    .line 668
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 673
    :catch_4c
    move-exception v0

    .line 674
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private a()Z
    .registers 3

    .prologue
    .line 638
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->a:Ljava/lang/String;

    const-string/jumbo v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;)Z
    .registers 2

    .prologue
    .line 494
    invoke-direct {p0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->a()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;)Lcom/koushikdutta/async/http/cache/RawHeaders;
    .registers 2

    .prologue
    .line 494
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->d:Lcom/koushikdutta/async/http/cache/RawHeaders;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    const/16 v5, 0xa

    .line 610
    invoke-virtual {p1, v1}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->a(I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 611
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    sget-object v4, Lcom/koushikdutta/async/util/Charsets;->b:Ljava/nio/charset/Charset;

    invoke-direct {v3, v0, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/cache/RawHeaders;->d()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move v0, v1

    .line 616
    :goto_5e
    iget-object v3, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/cache/RawHeaders;->d()I

    move-result v3

    if-ge v0, v3, :cond_94

    .line 617
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v4, v0}, Lcom/koushikdutta/async/http/cache/RawHeaders;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v4, v0}, Lcom/koushikdutta/async/http/cache/RawHeaders;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 616
    add-int/lit8 v0, v0, 0x1

    goto :goto_5e

    .line 621
    :cond_94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->d:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/cache/RawHeaders;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->d:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/cache/RawHeaders;->d()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 623
    :goto_cc
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->d:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/cache/RawHeaders;->d()I

    move-result v0

    if-ge v1, v0, :cond_102

    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->d:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v3, v1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->d:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v3, v1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 623
    add-int/lit8 v1, v1, 0x1

    goto :goto_cc

    .line 628
    :cond_102
    invoke-direct {p0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->a()Z

    move-result v0

    if-eqz v0, :cond_12b

    .line 629
    invoke-virtual {v2, v5}, Ljava/io/Writer;->write(I)V

    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 631
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->f:[Ljava/security/cert/Certificate;

    invoke-direct {p0, v2, v0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->a(Ljava/io/Writer;[Ljava/security/cert/Certificate;)V

    .line 632
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->g:[Ljava/security/cert/Certificate;

    invoke-direct {p0, v2, v0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->a(Ljava/io/Writer;[Ljava/security/cert/Certificate;)V

    .line 634
    :cond_12b
    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    .line 635
    return-void
.end method

.method public a(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 680
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->c:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    new-instance v0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;

    iget-object v1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->d:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-direct {v0, p1, v1}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;-><init>(Landroid/net/Uri;Lcom/koushikdutta/async/http/cache/RawHeaders;)V

    iget-object v1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->f()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->a(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v0, 0x1

    :goto_28
    return v0

    :cond_29
    const/4 v0, 0x0

    goto :goto_28
.end method
