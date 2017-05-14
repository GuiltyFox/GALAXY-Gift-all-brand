.class Lcom/koushikdutta/ion/IonRequestBuilder$6$1;
.super Ljava/lang/Object;
.source "IonRequestBuilder.java"

# interfaces
.implements Lcom/koushikdutta/async/future/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/IonRequestBuilder$6;->a(Lcom/koushikdutta/ion/Loader$LoaderEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/future/FutureCallback",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/ion/IonRequestBuilder$6;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/IonRequestBuilder$6;)V
    .registers 2

    .prologue
    .line 630
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$6$1;->a:Lcom/koushikdutta/ion/IonRequestBuilder$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 633
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$6$1;->a:Lcom/koushikdutta/ion/IonRequestBuilder$6;

    iget-object v0, v0, Lcom/koushikdutta/ion/IonRequestBuilder$6;->c:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$6$1;->a:Lcom/koushikdutta/ion/IonRequestBuilder$6;

    iget-object v1, v1, Lcom/koushikdutta/ion/IonRequestBuilder$6;->a:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    invoke-static {v0, v1, p1, p2}, Lcom/koushikdutta/ion/IonRequestBuilder;->a(Lcom/koushikdutta/ion/IonRequestBuilder;Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 634
    return-void
.end method
