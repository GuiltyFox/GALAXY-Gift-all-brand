.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$8;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->a(Lcom/bzbs/lib/survey/bean/AdBuzzItem;Landroid/view/ViewGroup;I)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;Landroid/widget/ImageView;)V
    .registers 3

    .prologue
    .line 1373
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$8;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iput-object p2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$8;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 1377
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$8;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$8;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v1, v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->s(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$8;->a:Landroid/widget/ImageView;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->q:I

    .line 1380
    new-instance v0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;

    invoke-direct {v0}, Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;-><init>()V

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$8;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v1, v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    .line 1381
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;->a(Landroid/content/Context;)Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;

    move-result-object v0

    const-string/jumbo v1, "PERMISSION CAMERA And READ_EXTERNAL_STORAGE Denied"

    .line 1382
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "android.permission.CAMERA"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    .line 1383
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;->a([Ljava/lang/String;)Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;

    move-result-object v0

    new-instance v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$8$1;

    invoke-direct {v1, p0, p1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$8$1;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$8;Landroid/view/View;)V

    .line 1384
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;->a(Lcom/bzbs/lib/survey/util/AddOnPermissions;)Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;

    move-result-object v0

    .line 1392
    invoke-virtual {v0}, Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;->a()Lcom/bzbs/lib/survey/util/RxPermissionUtils;

    .line 1394
    return-void
.end method
