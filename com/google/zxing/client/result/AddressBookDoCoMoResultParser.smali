.class public final Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;
.super Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;
.source "AddressBookDoCoMoResultParser.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 84
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 85
    if-ltz v0, :cond_2a

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 89
    :cond_2a
    return-object p0
.end method


# virtual methods
.method public a(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;
    .registers 19

    .prologue
    .line 40
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->c(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v0

    .line 41
    const-string/jumbo v1, "MECARD:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 42
    const/4 v0, 0x0

    .line 65
    :goto_e
    return-object v0

    .line 44
    :cond_f
    const-string/jumbo v1, "N:"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->a(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v1

    .line 45
    if-nez v1, :cond_1b

    .line 46
    const/4 v0, 0x0

    goto :goto_e

    .line 48
    :cond_1b
    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    const-string/jumbo v2, "SOUND:"

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 50
    const-string/jumbo v2, "TEL:"

    const/4 v4, 0x1

    invoke-static {v2, v0, v4}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->a(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v4

    .line 51
    const-string/jumbo v2, "EMAIL:"

    const/4 v5, 0x1

    invoke-static {v2, v0, v5}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->a(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v6

    .line 52
    const-string/jumbo v2, "NOTE:"

    const/4 v5, 0x0

    invoke-static {v2, v0, v5}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    .line 53
    const-string/jumbo v2, "ADR:"

    const/4 v5, 0x1

    invoke-static {v2, v0, v5}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->a(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v10

    .line 54
    const-string/jumbo v2, "BDAY:"

    const/4 v5, 0x1

    invoke-static {v2, v0, v5}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    .line 55
    const/16 v2, 0x8

    invoke-static {v13, v2}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->a(Ljava/lang/CharSequence;I)Z

    move-result v2

    if-nez v2, :cond_5b

    .line 57
    const/4 v13, 0x0

    .line 59
    :cond_5b
    const-string/jumbo v2, "URL:"

    const/4 v5, 0x1

    invoke-static {v2, v0, v5}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->a(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v15

    .line 63
    const-string/jumbo v2, "ORG:"

    const/4 v5, 0x1

    invoke-static {v2, v0, v5}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v12

    .line 65
    new-instance v0, Lcom/google/zxing/client/result/AddressBookParsedResult;

    invoke-static {v1}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v0 .. v16}, Lcom/google/zxing/client/result/AddressBookParsedResult;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_e
.end method

.method public synthetic b(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .registers 3

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->a(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;

    move-result-object v0

    return-object v0
.end method
