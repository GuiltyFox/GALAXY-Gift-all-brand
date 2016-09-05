.class public final Lcom/google/zxing/client/result/TelParsedResult;
.super Lcom/google/zxing/client/result/ParsedResult;
.source "TelParsedResult.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 29
    sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->g:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-direct {p0, v0}, Lcom/google/zxing/client/result/ParsedResult;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V

    .line 30
    iput-object p1, p0, Lcom/google/zxing/client/result/TelParsedResult;->a:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/google/zxing/client/result/TelParsedResult;->b:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/google/zxing/client/result/TelParsedResult;->c:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .registers 3

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 50
    iget-object v1, p0, Lcom/google/zxing/client/result/TelParsedResult;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/TelParsedResult;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 51
    iget-object v1, p0, Lcom/google/zxing/client/result/TelParsedResult;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/TelParsedResult;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
