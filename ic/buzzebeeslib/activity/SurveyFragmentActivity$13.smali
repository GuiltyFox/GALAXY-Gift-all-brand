.class Lic/buzzebeeslib/activity/SurveyFragmentActivity$13;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/SurveyFragmentActivity;->showDialogAlertOut(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$13;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    .line 2561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "p_dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 2563
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 2564
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$13;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    invoke-virtual {v0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->finish()V

    .line 2565
    return-void
.end method
