.class public final Lcz/msebera/android/httpclient/protocol/DefaultedHttpContext;
.super Ljava/lang/Object;
.source "DefaultedHttpContext.java"

# interfaces
.implements Lcz/msebera/android/httpclient/protocol/HttpContext;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lcz/msebera/android/httpclient/protocol/HttpContext;

.field private final b:Lcz/msebera/android/httpclient/protocol/HttpContext;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .registers 4

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string/jumbo v0, "HTTP context"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/protocol/HttpContext;

    iput-object v0, p0, Lcz/msebera/android/httpclient/protocol/DefaultedHttpContext;->a:Lcz/msebera/android/httpclient/protocol/HttpContext;

    .line 51
    iput-object p2, p0, Lcz/msebera/android/httpclient/protocol/DefaultedHttpContext;->b:Lcz/msebera/android/httpclient/protocol/HttpContext;

    .line 52
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 55
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/DefaultedHttpContext;->a:Lcz/msebera/android/httpclient/protocol/HttpContext;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 56
    if-nez v0, :cond_e

    .line 57
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/DefaultedHttpContext;->b:Lcz/msebera/android/httpclient/protocol/HttpContext;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 59
    :cond_e
    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 68
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/DefaultedHttpContext;->a:Lcz/msebera/android/httpclient/protocol/HttpContext;

    invoke-interface {v0, p1, p2}, Lcz/msebera/android/httpclient/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    const-string/jumbo v1, "[local: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/protocol/DefaultedHttpContext;->a:Lcz/msebera/android/httpclient/protocol/HttpContext;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    const-string/jumbo v1, "defaults: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/protocol/DefaultedHttpContext;->b:Lcz/msebera/android/httpclient/protocol/HttpContext;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
