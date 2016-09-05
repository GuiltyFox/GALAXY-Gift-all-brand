.class Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;
.super Ljava/lang/Object;
.source "HttpEngine.java"

# interfaces
.implements Lokhttp3/Interceptor$Chain;


# instance fields
.field final synthetic a:Lokhttp3/internal/http/HttpEngine;

.field private final b:I

.field private final c:Lokhttp3/Request;

.field private final d:Lokhttp3/Connection;

.field private e:I


# direct methods
.method constructor <init>(Lokhttp3/internal/http/HttpEngine;ILokhttp3/Request;Lokhttp3/Connection;)V
    .registers 5

    .prologue
    .line 694
    iput-object p1, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->a:Lokhttp3/internal/http/HttpEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 695
    iput p2, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->b:I

    .line 696
    iput-object p3, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->c:Lokhttp3/Request;

    .line 697
    iput-object p4, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->d:Lokhttp3/Connection;

    .line 698
    return-void
.end method


# virtual methods
.method public a()Lokhttp3/Request;
    .registers 2

    .prologue
    .line 705
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->c:Lokhttp3/Request;

    return-object v0
.end method

.method public a(Lokhttp3/Request;)Lokhttp3/Response;
    .registers 8

    .prologue
    const/4 v4, 0x1

    .line 709
    iget v0, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->e:I

    .line 711
    iget v0, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->b:I

    if-lez v0, :cond_97

    .line 712
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->a:Lokhttp3/internal/http/HttpEngine;

    iget-object v0, v0, Lokhttp3/internal/http/HttpEngine;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->w()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->b:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Interceptor;

    .line 713
    invoke-virtual {p0}, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->b()Lokhttp3/Connection;

    move-result-object v1

    invoke-interface {v1}, Lokhttp3/Connection;->a()Lokhttp3/Route;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Route;->a()Lokhttp3/Address;

    move-result-object v1

    .line 716
    invoke-virtual {p1}, Lokhttp3/Request;->a()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lokhttp3/Address;->a()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/HttpUrl;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 717
    invoke-virtual {p1}, Lokhttp3/Request;->a()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->g()I

    move-result v2

    invoke-virtual {v1}, Lokhttp3/Address;->a()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->g()I

    move-result v1

    if-eq v2, v1, :cond_72

    .line 718
    :cond_51
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "network interceptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " must retain the same host and port"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 723
    :cond_72
    iget v1, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->e:I

    if-le v1, v4, :cond_97

    .line 724
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "network interceptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " must call proceed() exactly once"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 729
    :cond_97
    iget v0, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->b:I

    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->a:Lokhttp3/internal/http/HttpEngine;

    iget-object v1, v1, Lokhttp3/internal/http/HttpEngine;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->w()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_112

    .line 731
    new-instance v2, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;

    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->a:Lokhttp3/internal/http/HttpEngine;

    iget v1, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->b:I

    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->d:Lokhttp3/Connection;

    invoke-direct {v2, v0, v1, p1, v3}, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;-><init>(Lokhttp3/internal/http/HttpEngine;ILokhttp3/Request;Lokhttp3/Connection;)V

    .line 732
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->a:Lokhttp3/internal/http/HttpEngine;

    iget-object v0, v0, Lokhttp3/internal/http/HttpEngine;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->w()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Interceptor;

    .line 733
    invoke-interface {v0, v2}, Lokhttp3/Interceptor;->a(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;

    move-result-object v1

    .line 736
    iget v2, v2, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->e:I

    if-eq v2, v4, :cond_ed

    .line 737
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "network interceptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " must call proceed() exactly once"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 740
    :cond_ed
    if-nez v1, :cond_110

    .line 741
    new-instance v1, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "network interceptor "

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

    :cond_110
    move-object v0, v1

    .line 768
    :cond_111
    return-object v0

    .line 748
    :cond_112
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->a:Lokhttp3/internal/http/HttpEngine;

    invoke-static {v0}, Lokhttp3/internal/http/HttpEngine;->a(Lokhttp3/internal/http/HttpEngine;)Lokhttp3/internal/http/HttpStream;

    move-result-object v0

    invoke-interface {v0, p1}, Lokhttp3/internal/http/HttpStream;->a(Lokhttp3/Request;)V

    .line 751
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->a:Lokhttp3/internal/http/HttpEngine;

    invoke-static {v0, p1}, Lokhttp3/internal/http/HttpEngine;->a(Lokhttp3/internal/http/HttpEngine;Lokhttp3/Request;)Lokhttp3/Request;

    .line 753
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->a:Lokhttp3/internal/http/HttpEngine;

    invoke-virtual {v0, p1}, Lokhttp3/internal/http/HttpEngine;->a(Lokhttp3/Request;)Z

    move-result v0

    if-eqz v0, :cond_14e

    invoke-virtual {p1}, Lokhttp3/Request;->d()Lokhttp3/RequestBody;

    move-result-object v0

    if-eqz v0, :cond_14e

    .line 754
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->a:Lokhttp3/internal/http/HttpEngine;

    invoke-static {v0}, Lokhttp3/internal/http/HttpEngine;->a(Lokhttp3/internal/http/HttpEngine;)Lokhttp3/internal/http/HttpStream;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp3/Request;->d()Lokhttp3/RequestBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/RequestBody;->a()J

    move-result-wide v2

    invoke-interface {v0, p1, v2, v3}, Lokhttp3/internal/http/HttpStream;->a(Lokhttp3/Request;J)Lokio/Sink;

    move-result-object v0

    .line 755
    invoke-static {v0}, Lokio/Okio;->a(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v0

    .line 756
    invoke-virtual {p1}, Lokhttp3/Request;->d()Lokhttp3/RequestBody;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp3/RequestBody;->a(Lokio/BufferedSink;)V

    .line 757
    invoke-interface {v0}, Lokio/BufferedSink;->close()V

    .line 760
    :cond_14e
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->a:Lokhttp3/internal/http/HttpEngine;

    invoke-static {v0}, Lokhttp3/internal/http/HttpEngine;->b(Lokhttp3/internal/http/HttpEngine;)Lokhttp3/Response;

    move-result-object v0

    .line 762
    invoke-virtual {v0}, Lokhttp3/Response;->b()I

    move-result v1

    .line 763
    const/16 v2, 0xcc

    if-eq v1, v2, :cond_160

    const/16 v2, 0xcd

    if-ne v1, v2, :cond_111

    :cond_160
    invoke-virtual {v0}, Lokhttp3/Response;->g()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->b()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_111

    .line 764
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "HTTP "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " had non-zero Content-Length: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 765
    invoke-virtual {v0}, Lokhttp3/Response;->g()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->b()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public b()Lokhttp3/Connection;
    .registers 2

    .prologue
    .line 701
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->d:Lokhttp3/Connection;

    return-object v0
.end method
