.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$7$1;
.super Lcom/bzbs/lib/survey/util/AddOnPermissions;
.source "SurveyFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$7;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$7;Landroid/view/View;)V
    .registers 3
    .param p1, "this$2"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$7;

    .prologue
    .line 1360
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$7$1;->this$2:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$7;

    iput-object p2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$7$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Lcom/bzbs/lib/survey/util/AddOnPermissions;-><init>()V

    return-void
.end method


# virtual methods
.method public isGranted(Z)V
    .registers 4
    .param p1, "granted"    # Z

    .prologue
    .line 1363
    invoke-super {p0, p1}, Lcom/bzbs/lib/survey/util/AddOnPermissions;->isGranted(Z)V

    .line 1364
    if-eqz p1, :cond_10

    .line 1365
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$7$1;->this$2:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$7;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$7;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$7$1;->val$v:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->takePicture(Landroid/view/View;)V

    .line 1367
    :cond_10
    return-void
.end method
