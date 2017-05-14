.class Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$2;
.super Ljava/lang/Object;
.source "IonRequestBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->a(Lcom/koushikdutta/ion/Loader$LoaderEmitter;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/ion/HeadersResponse;

.field final synthetic b:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;Lcom/koushikdutta/ion/HeadersResponse;)V
    .registers 3

    .prologue
    .line 475
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$2;->b:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    iput-object p2, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$2;->a:Lcom/koushikdutta/ion/HeadersResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 478
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$2;->b:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    iget-object v0, v0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->u:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-object v0, v0, Lcom/koushikdutta/ion/IonRequestBuilder;->B:Lcom/koushikdutta/ion/HeadersCallback;

    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$2;->a:Lcom/koushikdutta/ion/HeadersResponse;

    invoke-interface {v0, v1}, Lcom/koushikdutta/ion/HeadersCallback;->a(Lcom/koushikdutta/ion/HeadersResponse;)V

    .line 479
    return-void
.end method
