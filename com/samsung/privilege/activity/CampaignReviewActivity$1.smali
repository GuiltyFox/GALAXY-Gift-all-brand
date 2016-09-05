.class Lcom/samsung/privilege/activity/CampaignReviewActivity$1;
.super Ljava/lang/Object;
.source "CampaignReviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignReviewActivity;->a(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/activity/CampaignReviewActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignReviewActivity;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 97
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$1;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 100
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$1;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$1;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 102
    return-void
.end method
