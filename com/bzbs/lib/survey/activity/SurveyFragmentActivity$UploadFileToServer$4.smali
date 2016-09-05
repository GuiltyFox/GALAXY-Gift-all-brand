.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer$4;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;->a()Ljava/lang/String;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 4054
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer$4;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;

    iput-object p2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 4056
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer$4;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer$4;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;)V

    .line 4057
    return-void
.end method
