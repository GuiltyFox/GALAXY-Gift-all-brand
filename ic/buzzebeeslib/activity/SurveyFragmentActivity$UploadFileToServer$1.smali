.class Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer$1;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer$1;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;

    .line 2847
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2851
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer$1;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;->cancel(Z)Z

    .line 2852
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer$1;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;->dialogUpload:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2853
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer$1;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;->access$4(Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->deleteMedia(Landroid/view/View;)V

    .line 2854
    return-void
.end method
