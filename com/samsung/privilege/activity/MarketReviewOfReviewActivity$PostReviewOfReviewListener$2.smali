.class Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener$2;
.super Ljava/lang/Object;
.source "MarketReviewOfReviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;->onSuccess(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener$2;->this$1:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;

    .line 737
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 739
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener$2;->this$1:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;->access$0(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;)Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gTxtPostComment:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$8(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 740
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener$2;->this$1:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;->access$0(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;)Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gTxtPostComment:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$8(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 741
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener$2;->this$1:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;->access$0(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;)Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gBtnPostComment:Landroid/widget/Button;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$9(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 742
    return-void
.end method
