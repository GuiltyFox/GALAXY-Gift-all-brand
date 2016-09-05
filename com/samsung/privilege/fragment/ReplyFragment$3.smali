.class Lcom/samsung/privilege/fragment/ReplyFragment$3;
.super Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask$CallbackModel;
.source "ReplyFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/fragment/ReplyFragment;->b(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/fragment/ReplyFragment;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/fragment/ReplyFragment;)V
    .registers 2

    .prologue
    .line 175
    iput-object p1, p0, Lcom/samsung/privilege/fragment/ReplyFragment$3;->a:Lcom/samsung/privilege/fragment/ReplyFragment;

    invoke-direct {p0}, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask$CallbackModel;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[Lcz/msebera/android/httpclient/Header;[BLcom/bzbs/marketplace/model/review/ReviewModel;)V
    .registers 7

    .prologue
    .line 178
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment$3;->a:Lcom/samsung/privilege/fragment/ReplyFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/privilege/fragment/ReplyFragment;->b(Lcom/samsung/privilege/fragment/ReplyFragment;Z)V

    .line 179
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment$3;->a:Lcom/samsung/privilege/fragment/ReplyFragment;

    invoke-static {v0, p4}, Lcom/samsung/privilege/fragment/ReplyFragment;->a(Lcom/samsung/privilege/fragment/ReplyFragment;Lcom/bzbs/marketplace/model/review/ReviewModel;)Lcom/bzbs/marketplace/model/review/ReviewModel;

    .line 181
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment$3;->a:Lcom/samsung/privilege/fragment/ReplyFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/ReplyFragment;->g(Lcom/samsung/privilege/fragment/ReplyFragment;)V

    .line 182
    return-void
.end method

.method public a(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 7

    .prologue
    .line 186
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment$3;->a:Lcom/samsung/privilege/fragment/ReplyFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/privilege/fragment/ReplyFragment;->b(Lcom/samsung/privilege/fragment/ReplyFragment;Z)V

    .line 187
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment$3;->a:Lcom/samsung/privilege/fragment/ReplyFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/ReplyFragment;->h(Lcom/samsung/privilege/fragment/ReplyFragment;)V

    .line 188
    return-void
.end method
