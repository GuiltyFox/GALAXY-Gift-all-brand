.class Lcom/facebook/share/ShareApi$7;
.super Ljava/lang/Object;
.source "ShareApi.java"

# interfaces
.implements Lcom/facebook/internal/CollectionMapper$ValueMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/ShareApi;->stageCollectionValues(Lcom/facebook/internal/CollectionMapper$Collection;Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/ShareApi;


# direct methods
.method constructor <init>(Lcom/facebook/share/ShareApi;)V
    .registers 2

    .prologue
    .line 486
    iput-object p1, p0, Lcom/facebook/share/ShareApi$7;->this$0:Lcom/facebook/share/ShareApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mapValue(Ljava/lang/Object;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V
    .registers 4

    .prologue
    .line 491
    instance-of v0, p1, Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    .line 492
    iget-object v0, p0, Lcom/facebook/share/ShareApi$7;->this$0:Lcom/facebook/share/ShareApi;

    check-cast p1, Ljava/util/ArrayList;

    # invokes: Lcom/facebook/share/ShareApi;->stageArrayList(Ljava/util/ArrayList;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V
    invoke-static {v0, p1, p2}, Lcom/facebook/share/ShareApi;->access$200(Lcom/facebook/share/ShareApi;Ljava/util/ArrayList;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V

    .line 502
    :goto_b
    return-void

    .line 493
    :cond_c
    instance-of v0, p1, Lcom/facebook/share/model/ShareOpenGraphObject;

    if-eqz v0, :cond_18

    .line 494
    iget-object v0, p0, Lcom/facebook/share/ShareApi$7;->this$0:Lcom/facebook/share/ShareApi;

    check-cast p1, Lcom/facebook/share/model/ShareOpenGraphObject;

    # invokes: Lcom/facebook/share/ShareApi;->stageOpenGraphObject(Lcom/facebook/share/model/ShareOpenGraphObject;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V
    invoke-static {v0, p1, p2}, Lcom/facebook/share/ShareApi;->access$300(Lcom/facebook/share/ShareApi;Lcom/facebook/share/model/ShareOpenGraphObject;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V

    goto :goto_b

    .line 497
    :cond_18
    instance-of v0, p1, Lcom/facebook/share/model/SharePhoto;

    if-eqz v0, :cond_24

    .line 498
    iget-object v0, p0, Lcom/facebook/share/ShareApi$7;->this$0:Lcom/facebook/share/ShareApi;

    check-cast p1, Lcom/facebook/share/model/SharePhoto;

    # invokes: Lcom/facebook/share/ShareApi;->stagePhoto(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V
    invoke-static {v0, p1, p2}, Lcom/facebook/share/ShareApi;->access$400(Lcom/facebook/share/ShareApi;Lcom/facebook/share/model/SharePhoto;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V

    goto :goto_b

    .line 500
    :cond_24
    invoke-interface {p2, p1}, Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;->onComplete(Ljava/lang/Object;)V

    goto :goto_b
.end method
