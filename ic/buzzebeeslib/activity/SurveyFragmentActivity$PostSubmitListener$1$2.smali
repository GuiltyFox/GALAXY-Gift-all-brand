.class Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener$1$2;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener$1;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener$1;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener$1$2;->this$2:Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener$1;

    .line 2273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "p_dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 2275
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 2276
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener$1$2;->this$2:Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener$1;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;
    invoke-static {v0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener$1;->access$0(Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener$1;)Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->finish()V

    .line 2277
    return-void
.end method
