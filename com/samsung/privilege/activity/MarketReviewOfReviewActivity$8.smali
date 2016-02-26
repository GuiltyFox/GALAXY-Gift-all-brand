.class Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$8;
.super Ljava/lang/Object;
.source "MarketReviewOfReviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->loadReviewOfReview(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$8;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    .line 1176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 1178
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$8;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gIvLoadingPrevious:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$19(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1179
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$8;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gIvLoadingPrevious:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$19(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1181
    :cond_13
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$8;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gPbLoadingReview:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$20(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1182
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$8;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gPbLoadingPrevious:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$21(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 1183
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$8;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gPbLoadingPrevious:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$21(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1185
    :cond_2d
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$8;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gTvPreviousReview:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$22(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_5c

    .line 1186
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$8;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gTvPreviousReview:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$22(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$8;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    const v3, 0x7f09010b

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1188
    :cond_5c
    return-void
.end method
