.class Lcom/bumptech/glide/RequestManager$OptionsApplier;
.super Ljava/lang/Object;
.source "RequestManager.java"


# instance fields
.field final synthetic a:Lcom/bumptech/glide/RequestManager;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/RequestManager;)V
    .registers 2

    .prologue
    .line 779
    iput-object p1, p0, Lcom/bumptech/glide/RequestManager$OptionsApplier;->a:Lcom/bumptech/glide/RequestManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "X:",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TA;***>;>(TX;)TX;"
        }
    .end annotation

    .prologue
    .line 782
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager$OptionsApplier;->a:Lcom/bumptech/glide/RequestManager;

    invoke-static {v0}, Lcom/bumptech/glide/RequestManager;->f(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/RequestManager$DefaultOptions;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 783
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager$OptionsApplier;->a:Lcom/bumptech/glide/RequestManager;

    invoke-static {v0}, Lcom/bumptech/glide/RequestManager;->f(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/RequestManager$DefaultOptions;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bumptech/glide/RequestManager$DefaultOptions;->a(Lcom/bumptech/glide/GenericRequestBuilder;)V

    .line 785
    :cond_11
    return-object p1
.end method
