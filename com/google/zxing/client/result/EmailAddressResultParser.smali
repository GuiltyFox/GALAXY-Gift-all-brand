.class public final Lcom/google/zxing/client/result/EmailAddressResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "EmailAddressResultParser.java"


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const-string/jumbo v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/EmailAddressResultParser;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/EmailAddressParsedResult;
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-static {p1}, Lcom/google/zxing/client/result/EmailAddressResultParser;->c(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v3

    .line 37
    const-string/jumbo v0, "mailto:"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string/jumbo v0, "MAILTO:"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 39
    :cond_17
    const/4 v0, 0x7

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 40
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 41
    if-ltz v1, :cond_29

    .line 42
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 44
    :cond_29
    invoke-static {v0}, Lcom/google/zxing/client/result/EmailAddressResultParser;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a9

    .line 47
    sget-object v1, Lcom/google/zxing/client/result/EmailAddressResultParser;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 49
    :goto_3a
    invoke-static {v3}, Lcom/google/zxing/client/result/EmailAddressResultParser;->d(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    .line 54
    if-eqz v5, :cond_a5

    .line 55
    if-nez v1, :cond_a3

    .line 56
    const-string/jumbo v0, "to"

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 57
    if-eqz v0, :cond_a3

    .line 58
    sget-object v1, Lcom/google/zxing/client/result/EmailAddressResultParser;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .line 61
    :goto_54
    const-string/jumbo v0, "cc"

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 62
    if-eqz v0, :cond_a1

    .line 63
    sget-object v1, Lcom/google/zxing/client/result/EmailAddressResultParser;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 65
    :goto_66
    const-string/jumbo v0, "bcc"

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 66
    if-eqz v0, :cond_77

    .line 67
    sget-object v1, Lcom/google/zxing/client/result/EmailAddressResultParser;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    .line 69
    :cond_77
    const-string/jumbo v0, "subject"

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 70
    const-string/jumbo v1, "body"

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v5, v1

    move-object v1, v3

    move-object v3, v2

    move-object v2, v4

    move-object v4, v0

    .line 72
    :goto_8e
    new-instance v0, Lcom/google/zxing/client/result/EmailAddressParsedResult;

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/client/result/EmailAddressParsedResult;-><init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    .line 77
    :cond_94
    :goto_94
    return-object v2

    .line 74
    :cond_95
    invoke-static {v3}, Lcom/google/zxing/client/result/EmailDoCoMoResultParser;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 77
    new-instance v2, Lcom/google/zxing/client/result/EmailAddressParsedResult;

    invoke-direct {v2, v3}, Lcom/google/zxing/client/result/EmailAddressParsedResult;-><init>(Ljava/lang/String;)V

    goto :goto_94

    :cond_a1
    move-object v4, v2

    goto :goto_66

    :cond_a3
    move-object v3, v1

    goto :goto_54

    :cond_a5
    move-object v5, v2

    move-object v4, v2

    move-object v3, v2

    goto :goto_8e

    :cond_a9
    move-object v1, v2

    goto :goto_3a
.end method

.method public synthetic b(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .registers 3

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/EmailAddressResultParser;->a(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/EmailAddressParsedResult;

    move-result-object v0

    return-object v0
.end method
