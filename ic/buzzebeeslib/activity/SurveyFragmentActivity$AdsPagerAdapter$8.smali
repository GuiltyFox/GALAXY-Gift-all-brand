.class Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$8;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->initialViewSurvey(Lic/buzzebeeslib/bean/AdBuzzItem;Landroid/view/ViewGroup;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;

.field private final synthetic val$etFieldInputLocation:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;Landroid/widget/TextView;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$8;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iput-object p2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$8;->val$etFieldInputLocation:Landroid/widget/TextView;

    .line 762
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 767
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$8;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->access$1(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v0

    # invokes: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->EnableGPSIfPossible()Z
    invoke-static {v0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$19(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Z

    .line 768
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$8;->val$etFieldInputLocation:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$8;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->access$1(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v2

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gps:Lic/buzzebeeslib/util/GPSTracker;
    invoke-static {v2}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$18(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/util/GPSTracker;

    move-result-object v2

    invoke-virtual {v2}, Lic/buzzebeeslib/util/GPSTracker;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$8;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->access$1(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v2

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gps:Lic/buzzebeeslib/util/GPSTracker;
    invoke-static {v2}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$18(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/util/GPSTracker;

    move-result-object v2

    invoke-virtual {v2}, Lic/buzzebeeslib/util/GPSTracker;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 769
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$8;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->access$1(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$8;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->access$1(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v1

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gps:Lic/buzzebeeslib/util/GPSTracker;
    invoke-static {v1}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$18(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/util/GPSTracker;

    move-result-object v1

    invoke-virtual {v1}, Lic/buzzebeeslib/util/GPSTracker;->getLatitude()D

    move-result-wide v1

    iput-wide v1, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->lat:D

    .line 770
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$8;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->access$1(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$8;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->access$1(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v1

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gps:Lic/buzzebeeslib/util/GPSTracker;
    invoke-static {v1}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$18(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/util/GPSTracker;

    move-result-object v1

    invoke-virtual {v1}, Lic/buzzebeeslib/util/GPSTracker;->getLongitude()D

    move-result-wide v1

    iput-wide v1, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->lng:D

    .line 771
    return-void
.end method
