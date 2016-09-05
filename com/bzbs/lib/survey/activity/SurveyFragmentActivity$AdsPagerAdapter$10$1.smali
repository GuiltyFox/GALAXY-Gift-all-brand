.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$10$1;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$10;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$10;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$10;)V
    .registers 2

    .prologue
    .line 1433
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$10$1;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1436
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$10$1;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$10;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$10;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    new-instance v1, Lcom/bzbs/lib/survey/util/GPSTracker;

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$10$1;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$10;

    iget-object v2, v2, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$10;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v2, v2, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->w(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bzbs/lib/survey/util/GPSTracker;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Lcom/bzbs/lib/survey/util/GPSTracker;)Lcom/bzbs/lib/survey/util/GPSTracker;

    .line 1438
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$10$1;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$10;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$10;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->y(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_65

    .line 1439
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$10$1;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$10;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$10;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->y(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$10$1;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$10;

    iget-object v2, v2, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$10;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v2, v2, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->v(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/util/GPSTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bzbs/lib/survey/util/GPSTracker;->b()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$10$1;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$10;

    iget-object v2, v2, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$10;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v2, v2, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->v(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/util/GPSTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bzbs/lib/survey/util/GPSTracker;->c()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1441
    :cond_65
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$10$1;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$10;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$10;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$10$1;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$10;

    iget-object v1, v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$10;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v1, v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->v(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/util/GPSTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bzbs/lib/survey/util/GPSTracker;->b()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->m:D

    .line 1442
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$10$1;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$10;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$10;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$10$1;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$10;

    iget-object v1, v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$10;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v1, v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->v(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/util/GPSTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bzbs/lib/survey/util/GPSTracker;->c()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->n:D

    .line 1443
    return-void
.end method
