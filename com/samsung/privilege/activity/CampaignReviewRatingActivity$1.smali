.class Lcom/samsung/privilege/activity/CampaignReviewRatingActivity$1;
.super Ljava/lang/Object;
.source "CampaignReviewRatingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignReviewRatingActivity;->showToast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignReviewRatingActivity;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignReviewRatingActivity;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/CampaignReviewRatingActivity;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignReviewRatingActivity$1;->this$0:Lcom/samsung/privilege/activity/CampaignReviewRatingActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignReviewRatingActivity$1;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 36
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignReviewRatingActivity$1;->this$0:Lcom/samsung/privilege/activity/CampaignReviewRatingActivity;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignReviewRatingActivity$1;->val$msg:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 37
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 38
    return-void
.end method
