.class Lcom/koushikdutta/ion/IonRequestBuilder$1;
.super Ljava/lang/Object;
.source "IonRequestBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/IonRequestBuilder;->a(Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;Ljava/lang/Exception;Ljava/lang/Object;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

.field final synthetic b:Ljava/lang/Exception;

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Lcom/koushikdutta/ion/IonRequestBuilder;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/IonRequestBuilder;Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;Ljava/lang/Exception;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 230
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$1;->d:Lcom/koushikdutta/ion/IonRequestBuilder;

    iput-object p2, p0, Lcom/koushikdutta/ion/IonRequestBuilder$1;->a:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    iput-object p3, p0, Lcom/koushikdutta/ion/IonRequestBuilder$1;->b:Ljava/lang/Exception;

    iput-object p4, p0, Lcom/koushikdutta/ion/IonRequestBuilder$1;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 234
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$1;->d:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-object v0, v0, Lcom/koushikdutta/ion/IonRequestBuilder;->b:Lcom/koushikdutta/ion/ContextReference;

    invoke-virtual {v0}, Lcom/koushikdutta/ion/ContextReference;->a()Ljava/lang/String;

    move-result-object v0

    .line 235
    if-eqz v0, :cond_2b

    .line 236
    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$1;->a:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    iget-object v1, v1, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->o:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "context has died: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->c(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$1;->a:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    invoke-virtual {v0}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->c()Z

    .line 247
    :goto_2a
    return-void

    .line 243
    :cond_2b
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$1;->b:Ljava/lang/Exception;

    if-eqz v0, :cond_37

    .line 244
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$1;->a:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$1;->b:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->a(Ljava/lang/Exception;)Z

    goto :goto_2a

    .line 246
    :cond_37
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$1;->a:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$1;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->b(Ljava/lang/Object;)Z

    goto :goto_2a
.end method
