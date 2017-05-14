.class Lcom/samsung/privilege/fragment/RequestHelpFragment$1;
.super Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask$CallbackList;
.source "RequestHelpFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/fragment/RequestHelpFragment;->b()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/fragment/RequestHelpFragment;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/fragment/RequestHelpFragment;)V
    .registers 2

    .prologue
    .line 152
    iput-object p1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$1;->a:Lcom/samsung/privilege/fragment/RequestHelpFragment;

    invoke-direct {p0}, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask$CallbackList;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 7

    .prologue
    .line 178
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$1;->a:Lcom/samsung/privilege/fragment/RequestHelpFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a(Lcom/samsung/privilege/fragment/RequestHelpFragment;Z)V

    .line 179
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$1;->a:Lcom/samsung/privilege/fragment/RequestHelpFragment;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->tvResult:Landroid/widget/TextView;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$1;->a:Lcom/samsung/privilege/fragment/RequestHelpFragment;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->tvResult:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    :cond_15
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$1;->a:Lcom/samsung/privilege/fragment/RequestHelpFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a(Lcom/samsung/privilege/fragment/RequestHelpFragment;)V

    .line 181
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

    .line 155
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$1;->a:Lcom/samsung/privilege/fragment/RequestHelpFragment;

    invoke-static {v0, v1}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a(Lcom/samsung/privilege/fragment/RequestHelpFragment;Z)V

    .line 156
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$1;->a:Lcom/samsung/privilege/fragment/RequestHelpFragment;

    invoke-static {v0, v2}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->b(Lcom/samsung/privilege/fragment/RequestHelpFragment;Z)Z

    .line 158
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_17

    .line 159
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$1;->a:Lcom/samsung/privilege/fragment/RequestHelpFragment;

    invoke-static {v0, v2}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->c(Lcom/samsung/privilege/fragment/RequestHelpFragment;Z)Z

    .line 162
    :cond_17
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$1;->a:Lcom/samsung/privilege/fragment/RequestHelpFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a(Lcom/samsung/privilege/fragment/RequestHelpFragment;)V

    .line 164
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$1;->a:Lcom/samsung/privilege/fragment/RequestHelpFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->b(Lcom/samsung/privilege/fragment/RequestHelpFragment;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 165
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$1;->a:Lcom/samsung/privilege/fragment/RequestHelpFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->c(Lcom/samsung/privilege/fragment/RequestHelpFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$1;->a:Lcom/samsung/privilege/fragment/RequestHelpFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->c(Lcom/samsung/privilege/fragment/RequestHelpFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_45

    .line 166
    :cond_38
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$1;->a:Lcom/samsung/privilege/fragment/RequestHelpFragment;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->tvResult:Landroid/widget/TextView;

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$1;->a:Lcom/samsung/privilege/fragment/RequestHelpFragment;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->tvResult:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    :cond_45
    :goto_45
    return-void

    .line 171
    :cond_46
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$1;->a:Lcom/samsung/privilege/fragment/RequestHelpFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->c(Lcom/samsung/privilege/fragment/RequestHelpFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 173
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$1;->a:Lcom/samsung/privilege/fragment/RequestHelpFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->d(Lcom/samsung/privilege/fragment/RequestHelpFragment;)V

    goto :goto_45
.end method
