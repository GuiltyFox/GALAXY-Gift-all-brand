.class Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$26$1;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$26;->onPageSelected(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$26;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$26;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$26$1;->this$2:Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$26;

    .line 2109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "p_dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 2111
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 2112
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$26$1;->this$2:Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$26;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$26;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;
    invoke-static {v0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$26;->access$0(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$26;)Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->access$1(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->finish()V

    .line 2113
    return-void
.end method
