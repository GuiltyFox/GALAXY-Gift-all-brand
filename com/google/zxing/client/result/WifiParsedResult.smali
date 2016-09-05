.class public final Lcom/google/zxing/client/result/WifiParsedResult;
.super Lcom/google/zxing/client/result/ParsedResult;
.source "WifiParsedResult.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    .prologue
    .line 34
    sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->j:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-direct {p0, v0}, Lcom/google/zxing/client/result/ParsedResult;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V

    .line 35
    iput-object p2, p0, Lcom/google/zxing/client/result/WifiParsedResult;->a:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/google/zxing/client/result/WifiParsedResult;->b:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/google/zxing/client/result/WifiParsedResult;->c:Ljava/lang/String;

    .line 38
    iput-boolean p4, p0, Lcom/google/zxing/client/result/WifiParsedResult;->d:Z

    .line 39
    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .registers 3

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 60
    iget-object v1, p0, Lcom/google/zxing/client/result/WifiParsedResult;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/WifiParsedResult;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 61
    iget-object v1, p0, Lcom/google/zxing/client/result/WifiParsedResult;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/WifiParsedResult;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 62
    iget-object v1, p0, Lcom/google/zxing/client/result/WifiParsedResult;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/WifiParsedResult;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 63
    iget-boolean v1, p0, Lcom/google/zxing/client/result/WifiParsedResult;->d:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/WifiParsedResult;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
