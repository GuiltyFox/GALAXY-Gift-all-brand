.class public final Lcom/google/zxing/client/result/SMSParsedResult;
.super Lcom/google/zxing/client/result/ParsedResult;
.source "SMSParsedResult.java"


# instance fields
.field private final a:[Ljava/lang/String;

.field private final b:[Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 33
    sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->h:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-direct {p0, v0}, Lcom/google/zxing/client/result/ParsedResult;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V

    .line 34
    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/google/zxing/client/result/SMSParsedResult;->a:[Ljava/lang/String;

    .line 35
    new-array v0, v2, [Ljava/lang/String;

    aput-object p2, v0, v1

    iput-object v0, p0, Lcom/google/zxing/client/result/SMSParsedResult;->b:[Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/google/zxing/client/result/SMSParsedResult;->c:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/google/zxing/client/result/SMSParsedResult;->d:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 44
    sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->h:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-direct {p0, v0}, Lcom/google/zxing/client/result/ParsedResult;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V

    .line 45
    iput-object p1, p0, Lcom/google/zxing/client/result/SMSParsedResult;->a:[Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/google/zxing/client/result/SMSParsedResult;->b:[Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/google/zxing/client/result/SMSParsedResult;->c:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lcom/google/zxing/client/result/SMSParsedResult;->d:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .registers 3

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 105
    iget-object v1, p0, Lcom/google/zxing/client/result/SMSParsedResult;->a:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/SMSParsedResult;->a([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 106
    iget-object v1, p0, Lcom/google/zxing/client/result/SMSParsedResult;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/SMSParsedResult;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 107
    iget-object v1, p0, Lcom/google/zxing/client/result/SMSParsedResult;->d:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/SMSParsedResult;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
