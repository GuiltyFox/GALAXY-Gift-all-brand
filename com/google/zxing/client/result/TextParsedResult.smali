.class public final Lcom/google/zxing/client/result/TextParsedResult;
.super Lcom/google/zxing/client/result/ParsedResult;
.source "TextParsedResult.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 31
    sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->e:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-direct {p0, v0}, Lcom/google/zxing/client/result/ParsedResult;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V

    .line 32
    iput-object p1, p0, Lcom/google/zxing/client/result/TextParsedResult;->a:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/google/zxing/client/result/TextParsedResult;->b:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/zxing/client/result/TextParsedResult;->a:Ljava/lang/String;

    return-object v0
.end method