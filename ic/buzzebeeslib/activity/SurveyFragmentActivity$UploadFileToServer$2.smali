.class Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer$2;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Lic/buzzebeeslib/util/http/AndroidMultiPartEntity$ProgressListener;


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


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer$2;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;

    .line 2896
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transferred(J)V
    .registers 9
    .param p1, "num"    # J

    .prologue
    .line 2900
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer$2;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    long-to-float v3, p1

    iget-object v4, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer$2;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;->access$4(Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v4

    iget-wide v4, v4, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->totalSize:J

    long-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x42c80000

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    # invokes: Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;->publishProgress([Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;->access$3(Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;[Ljava/lang/Object;)V

    .line 2901
    return-void
.end method
