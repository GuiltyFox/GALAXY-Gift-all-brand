.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$15;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    .prologue
    .line 3715
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$15;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 3718
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$15;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    new-instance v1, Lcom/bzbs/lib/survey/util/GPSTracker;

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$15;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$2700(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bzbs/lib/survey/util/GPSTracker;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gps:Lcom/bzbs/lib/survey/util/GPSTracker;
    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$2602(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Lcom/bzbs/lib/survey/util/GPSTracker;)Lcom/bzbs/lib/survey/util/GPSTracker;

    .line 3720
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$15;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->etLocation:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$2500(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 3721
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$15;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->etLocation:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$2500(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$15;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gps:Lcom/bzbs/lib/survey/util/GPSTracker;
    invoke-static {v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$2600(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/util/GPSTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bzbs/lib/survey/util/GPSTracker;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$15;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gps:Lcom/bzbs/lib/survey/util/GPSTracker;
    invoke-static {v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$2600(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/util/GPSTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bzbs/lib/survey/util/GPSTracker;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3723
    :cond_4d
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$15;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$15;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gps:Lcom/bzbs/lib/survey/util/GPSTracker;
    invoke-static {v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$2600(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/util/GPSTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bzbs/lib/survey/util/GPSTracker;->getLatitude()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->lat:D

    .line 3724
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$15;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$15;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gps:Lcom/bzbs/lib/survey/util/GPSTracker;
    invoke-static {v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$2600(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/util/GPSTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bzbs/lib/survey/util/GPSTracker;->getLongitude()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->lng:D

    .line 3725
    return-void
.end method
