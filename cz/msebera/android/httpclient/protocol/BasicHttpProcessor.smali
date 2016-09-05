.class public final Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;
.super Ljava/lang/Object;
.source "BasicHttpProcessor.java"

# interfaces
.implements Lcz/msebera/android/httpclient/protocol/HttpProcessor;
.implements Ljava/lang/Cloneable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcz/msebera/android/httpclient/HttpRequestInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field protected final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcz/msebera/android/httpclient/HttpResponseInterceptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->a:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(I)Lcz/msebera/android/httpclient/HttpRequestInterceptor;
    .registers 3

    .prologue
    .line 118
    if-ltz p1, :cond_a

    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_c

    .line 119
    :cond_a
    const/4 v0, 0x0

    .line 121
    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    goto :goto_b
.end method

.method public a(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)V
    .registers 3

    .prologue
    .line 63
    if-nez p1, :cond_3

    .line 67
    :goto_2
    return-void

    .line 66
    :cond_3
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public a(Lcz/msebera/android/httpclient/HttpRequestInterceptor;I)V
    .registers 4

    .prologue
    .line 71
    if-nez p1, :cond_3

    .line 75
    :goto_2
    return-void

    .line 74
    :cond_3
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->a:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2
.end method

.method public a(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)V
    .registers 3

    .prologue
    .line 129
    if-nez p1, :cond_3

    .line 133
    :goto_2
    return-void

    .line 132
    :cond_3
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method protected a(Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;)V
    .registers 4

    .prologue
    .line 222
    iget-object v0, p1, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 223
    iget-object v0, p1, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->a:Ljava/util/List;

    iget-object v1, p0, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 224
    iget-object v0, p1, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 225
    iget-object v0, p1, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->b:Ljava/util/List;

    iget-object v1, p0, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 226
    return-void
.end method

.method public a(Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcz/msebera/android/httpclient/HttpRequestInterceptor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 87
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 88
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 89
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 90
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    .line 93
    :cond_1e
    return-void
.end method

.method public b()I
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public b(I)Lcz/msebera/android/httpclient/HttpResponseInterceptor;
    .registers 3

    .prologue
    .line 148
    if-ltz p1, :cond_a

    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_c

    .line 149
    :cond_a
    const/4 v0, 0x0

    .line 151
    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/HttpResponseInterceptor;

    goto :goto_b
.end method

.method public final b(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)V
    .registers 2

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->a(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)V

    .line 107
    return-void
.end method

.method public final b(Lcz/msebera/android/httpclient/HttpRequestInterceptor;I)V
    .registers 3

    .prologue
    .line 110
    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->a(Lcz/msebera/android/httpclient/HttpRequestInterceptor;I)V

    .line 111
    return-void
.end method

.method public final b(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)V
    .registers 2

    .prologue
    .line 136
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->a(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)V

    .line 137
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 241
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;

    .line 242
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->a(Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;)V

    .line 243
    return-object v0
.end method

.method public process(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .registers 5

    .prologue
    .line 201
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    .line 202
    invoke-interface {v0, p1, p2}, Lcz/msebera/android/httpclient/HttpRequestInterceptor;->process(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    goto :goto_6

    .line 204
    :cond_16
    return-void
.end method

.method public process(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .registers 5

    .prologue
    .line 210
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/HttpResponseInterceptor;

    .line 211
    invoke-interface {v0, p1, p2}, Lcz/msebera/android/httpclient/HttpResponseInterceptor;->process(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    goto :goto_6

    .line 213
    :cond_16
    return-void
.end method
