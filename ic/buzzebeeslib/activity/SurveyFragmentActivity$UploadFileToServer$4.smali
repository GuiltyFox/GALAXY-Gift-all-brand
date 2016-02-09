.class Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer$4;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;->uploadFile()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;

.field private final synthetic val$textError:Ljava/lang/String;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer$4;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;

    iput-object p2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer$4;->val$textError:Ljava/lang/String;

    .line 2960
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 2962
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer$4;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;->access$4(Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer$4;->val$textError:Ljava/lang/String;

    # invokes: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$0(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Ljava/lang/String;)V

    .line 2963
    return-void
.end method
