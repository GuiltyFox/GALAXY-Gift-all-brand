.class Lcom/samsung/privilege/fragment/ReplyFragment$4;
.super Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask$CallbackList;
.source "ReplyFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/fragment/ReplyFragment;->c()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/fragment/ReplyFragment;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/fragment/ReplyFragment;)V
    .registers 2

    .prologue
    .line 199
    iput-object p1, p0, Lcom/samsung/privilege/fragment/ReplyFragment$4;->a:Lcom/samsung/privilege/fragment/ReplyFragment;

    invoke-direct {p0}, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask$CallbackList;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 7

    .prologue
    .line 224
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment$4;->a:Lcom/samsung/privilege/fragment/ReplyFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/privilege/fragment/ReplyFragment;->b(Lcom/samsung/privilege/fragment/ReplyFragment;Z)V

    .line 225
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment$4;->a:Lcom/samsung/privilege/fragment/ReplyFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/ReplyFragment;->h(Lcom/samsung/privilege/fragment/ReplyFragment;)V

    .line 226
    return-void
.end method

.method public a(I[Lcz/msebera/android/httpclient/Header;[BLjava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lcz/msebera/android/httpclient/Header;",
            "[B",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/marketplace/model/review/ReviewModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 202
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment$4;->a:Lcom/samsung/privilege/fragment/ReplyFragment;

    invoke-static {v0, v1}, Lcom/samsung/privilege/fragment/ReplyFragment;->b(Lcom/samsung/privilege/fragment/ReplyFragment;Z)V

    .line 203
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment$4;->a:Lcom/samsung/privilege/fragment/ReplyFragment;

    invoke-static {v0, v2}, Lcom/samsung/privilege/fragment/ReplyFragment;->a(Lcom/samsung/privilege/fragment/ReplyFragment;Z)Z

    .line 204
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_17

    .line 205
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment$4;->a:Lcom/samsung/privilege/fragment/ReplyFragment;

    invoke-static {v0, v2}, Lcom/samsung/privilege/fragment/ReplyFragment;->c(Lcom/samsung/privilege/fragment/ReplyFragment;Z)Z

    .line 208
    :cond_17
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment$4;->a:Lcom/samsung/privilege/fragment/ReplyFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/ReplyFragment;->h(Lcom/samsung/privilege/fragment/ReplyFragment;)V

    .line 210
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment$4;->a:Lcom/samsung/privilege/fragment/ReplyFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/ReplyFragment;->i(Lcom/samsung/privilege/fragment/ReplyFragment;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 211
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment$4;->a:Lcom/samsung/privilege/fragment/ReplyFragment;

    invoke-static {v0, v1}, Lcom/samsung/privilege/fragment/ReplyFragment;->d(Lcom/samsung/privilege/fragment/ReplyFragment;Z)Z

    .line 217
    :cond_29
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment$4;->a:Lcom/samsung/privilege/fragment/ReplyFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/ReplyFragment;->k(Lcom/samsung/privilege/fragment/ReplyFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 219
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment$4;->a:Lcom/samsung/privilege/fragment/ReplyFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/ReplyFragment;->l(Lcom/samsung/privilege/fragment/ReplyFragment;)V

    .line 220
    :goto_37
    return-void

    .line 213
    :cond_38
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment$4;->a:Lcom/samsung/privilege/fragment/ReplyFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/ReplyFragment;->j(Lcom/samsung/privilege/fragment/ReplyFragment;)Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_37
.end method
