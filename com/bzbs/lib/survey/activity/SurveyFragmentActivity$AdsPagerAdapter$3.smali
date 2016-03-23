.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$3;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->initialViewSurvey(Lcom/bzbs/lib/survey/bean/AdBuzzItem;Landroid/view/ViewGroup;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

.field final synthetic val$etFieldInputCode:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;Landroid/widget/EditText;)V
    .registers 3
    .param p1, "this$1"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    .prologue
    .line 1212
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$3;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iput-object p2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$3;->val$etFieldInputCode:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1216
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$3;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v1, v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$3;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v2, v2, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->tvScanCode:Ljava/util/List;
    invoke-static {v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$1500(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$3;->val$etFieldInputCode:Landroid/widget/EditText;

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->currentView:I

    .line 1218
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$3;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v1, v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const-class v2, Lcom/bzbs/lib/survey/util/zxing/ScannerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1219
    .local v0, "zxing":Landroid/content/Intent;
    const-string/jumbo v1, "com.google.zxing.client.android.SCAN.SCAN_MODE"

    const-string/jumbo v2, "QR_CODE_MODE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1220
    const-string/jumbo v1, "appName"

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$3;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v2, v2, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    sget v3, Lcom/bzbs/lib/survey/R$string;->my_app_buzzebee:I

    invoke-virtual {v2, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1221
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$3;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v1, v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$3;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v2, v2, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->RC_BARCODE_SCANNER:I
    invoke-static {v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$1600(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1222
    return-void
.end method
