.class Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$25;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Lic/buzzebeeslib/control/VideoControllerView$OnRqExitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->initialViewVideo(Lic/buzzebeeslib/bean/AdBuzzItem;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$25;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;

    .line 2046
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRqExit()V
    .registers 2

    .prologue
    .line 2049
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$25;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->access$1(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->finish()V

    .line 2050
    return-void
.end method
