.class Lic/buzzebeeslib/activity/SurveyFragmentActivity$15;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/SurveyFragmentActivity;->AlertCameraDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

.field private final synthetic val$arrayAdapter:Landroid/widget/ArrayAdapter;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Landroid/widget/ArrayAdapter;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$15;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    iput-object p2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$15;->val$arrayAdapter:Landroid/widget/ArrayAdapter;

    .line 3010
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x0

    .line 3014
    iget-object v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$15;->val$arrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3015
    .local v0, "strName":Ljava/lang/String;
    const-string v1, "Take Photo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 3016
    iget-object v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$15;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->takePicture(Landroid/view/View;)V

    .line 3020
    :goto_16
    return-void

    .line 3018
    :cond_17
    iget-object v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$15;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->openGallery(Landroid/view/View;)V

    goto :goto_16
.end method
