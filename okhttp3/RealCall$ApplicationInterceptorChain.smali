.class Lokhttp3/RealCall$ApplicationInterceptorChain;
.super Ljava/lang/Object;
.source "RealCall.java"

# interfaces
.implements Lokhttp3/Interceptor$Chain;


# instance fields
.field final synthetic a:Lokhttp3/RealCall;

.field private final b:I

.field private final c:Lokhttp3/Request;

.field private final d:Z


# direct methods
.method constructor <init>(Lokhttp3/RealCall;ILokhttp3/Request;Z)V
    .registers 5

    .prologue
    .line 171
    iput-object p1, p0, Lokhttp3/RealCall$ApplicationInterceptorChain;->a:Lokhttp3/RealCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput p2, p0, Lokhttp3/RealCall$ApplicationInterceptorChain;->b:I

    .line 173
    iput-object p3, p0, Lokhttp3/RealCall$ApplicationInterceptorChain;->c:Lokhttp3/Request;

    .line 174
    iput-boolean p4, p0, Lokhttp3/RealCall$ApplicationInterceptorChain;->d:Z

    .line 175
    return-void
.end method


# virtual methods
.method public a()Lokhttp3/Request;
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lokhttp3/RealCall$ApplicationInterceptorChain;->c:Lokhttp3/Request;

    return-object v0
.end method

.method public a(Lokhttp3/Request;)Lokhttp3/Response;
    .registers 6

    .prologue
    .line 187
    iget v0, p0, Lokhttp3/RealCall$ApplicationInterceptorChain;->b:I

    iget-object v1, p0, Lokhttp3/RealCall$ApplicationInterceptorChain;->a:Lokhttp3/RealCall;

    invoke-static {v1}, Lokhttp3/RealCall;->b(Lokhttp3/RealCall;)Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->v()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5a

    .line 188
    new-instance v1, Lokhttp3/RealCall$ApplicationInterceptorChain;

    iget-object v0, p0, Lokhttp3/RealCall$ApplicationInterceptorChain;->a:Lokhttp3/RealCall;

    iget v2, p0, Lokhttp3/RealCall$ApplicationInterceptorChain;->b:I

    add-int/lit8 v2, v2, 0x1

    iget-boolean v3, p0, Lokhttp3/RealCall$ApplicationInterceptorChain;->d:Z

    invoke-direct {v1, v0, v2, p1, v3}, Lokhttp3/RealCall$ApplicationInterceptorChain;-><init>(Lokhttp3/RealCall;ILokhttp3/Request;Z)V

    .line 189
    iget-object v0, p0, Lokhttp3/RealCall$ApplicationInterceptorChain;->a:Lokhttp3/RealCall;

    invoke-static {v0}, Lokhttp3/RealCall;->b(Lokhttp3/RealCall;)Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->v()Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lokhttp3/RealCall$ApplicationInterceptorChain;->b:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Interceptor;

    .line 190
    invoke-interface {v0, v1}, Lokhttp3/Interceptor;->a(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;

    move-result-object v1

    .line 192
    if-nez v1, :cond_58

    .line 193
    new-instance v1, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "application interceptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " returned null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_58
    move-object v0, v1

    .line 201
    :goto_59
    return-object v0

    :cond_5a
    iget-object v0, p0, Lokhttp3/RealCall$ApplicationInterceptorChain;->a:Lokhttp3/RealCall;

    iget-boolean v1, p0, Lokhttp3/RealCall$ApplicationInterceptorChain;->d:Z

    invoke-virtual {v0, p1, v1}, Lokhttp3/RealCall;->a(Lokhttp3/Request;Z)Lokhttp3/Response;

    move-result-object v0

    goto :goto_59
.end method

.method public b()Lokhttp3/Connection;
    .registers 2

    .prologue
    .line 178
    const/4 v0, 0x0

    return-object v0
.end method
