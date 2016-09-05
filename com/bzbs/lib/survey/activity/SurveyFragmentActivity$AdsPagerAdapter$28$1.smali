.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$28$1;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$28;->onPageSelected(I)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$28;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$28;)V
    .registers 2

    .prologue
    .line 3085
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$28$1;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$28;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .prologue
    .line 3087
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 3088
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$28$1;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$28;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$28;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-virtual {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->finish()V

    .line 3089
    return-void
.end method
