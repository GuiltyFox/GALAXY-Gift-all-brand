.class Lcom/samsung/privilege/fragment/StampListGiftFragment$1;
.super Ljava/lang/Object;
.source "StampListGiftFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/fragment/StampListGiftFragment;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/fragment/StampListGiftFragment;


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 129
    iget-object v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$1;->b:Lcom/samsung/privilege/fragment/StampListGiftFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$1;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 131
    return-void
.end method
