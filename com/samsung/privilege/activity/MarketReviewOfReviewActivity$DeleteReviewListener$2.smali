.class Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$DeleteReviewListener$2;
.super Ljava/lang/Object;
.source "MarketReviewOfReviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$DeleteReviewListener;->onSuccess(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$DeleteReviewListener;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$DeleteReviewListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$DeleteReviewListener$2;->this$1:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$DeleteReviewListener;

    .line 1115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$DeleteReviewListener$2;->this$1:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$DeleteReviewListener;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$DeleteReviewListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$DeleteReviewListener;->access$0(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$DeleteReviewListener;)Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$10(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1118
    return-void
.end method
