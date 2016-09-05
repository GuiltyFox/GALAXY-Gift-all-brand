.class public final Lcom/google/zxing/client/result/SMTPResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "SMTPResultParser.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/EmailAddressParsedResult;
    .registers 9

    .prologue
    const/16 v5, 0x3a

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 31
    invoke-static {p1}, Lcom/google/zxing/client/result/SMTPResultParser;->c(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v0

    .line 32
    const-string/jumbo v1, "smtp:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    const-string/jumbo v1, "SMTP:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 48
    :goto_1a
    return-object v2

    .line 35
    :cond_1b
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 39
    if-ltz v1, :cond_51

    .line 40
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 41
    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 43
    if-ltz v1, :cond_4e

    .line 44
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 45
    invoke-virtual {v4, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object v3, v0

    .line 48
    :goto_41
    new-instance v0, Lcom/google/zxing/client/result/EmailAddressParsedResult;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object v3, v1, v6

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/client/result/EmailAddressParsedResult;-><init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    goto :goto_1a

    :cond_4e
    move-object v5, v2

    move-object v3, v0

    goto :goto_41

    :cond_51
    move-object v5, v2

    move-object v4, v2

    move-object v3, v0

    goto :goto_41
.end method

.method public synthetic b(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .registers 3

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/SMTPResultParser;->a(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/EmailAddressParsedResult;

    move-result-object v0

    return-object v0
.end method
