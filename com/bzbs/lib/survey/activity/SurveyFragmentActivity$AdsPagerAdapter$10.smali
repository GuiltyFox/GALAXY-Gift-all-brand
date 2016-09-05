.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$10;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->a(Lcom/bzbs/lib/survey/bean/AdBuzzItem;Landroid/view/ViewGroup;I)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;Landroid/widget/TextView;)V
    .registers 3

    .prologue
    .line 1418
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$10;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iput-object p2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$10;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    .prologue
    const-wide/16 v4, 0x0

    .line 1422
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$10;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    new-instance v1, Lcom/bzbs/lib/survey/util/GPSTracker;

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$10;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v2, v2, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->w(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bzbs/lib/survey/util/GPSTracker;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Lcom/bzbs/lib/survey/util/GPSTracker;)Lcom/bzbs/lib/survey/util/GPSTracker;

    .line 1423
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$10;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->w(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/lib/survey/util/LocationGPS;->a(Landroid/app/Activity;)Z

    move-result v0

    .line 1424
    if-nez v0, :cond_2d

    .line 1425
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$10;->a:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1453
    :goto_2c
    return-void

    .line 1429
    :cond_2d
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$10;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->x(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Z

    .line 1431
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$10;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    new-instance v1, Lcom/bzbs/lib/survey/util/GPSTracker;

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$10;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v2, v2, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->w(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bzbs/lib/survey/util/GPSTracker;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Lcom/bzbs/lib/survey/util/GPSTracker;)Lcom/bzbs/lib/survey/util/GPSTracker;

    .line 1433
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$10$1;

    invoke-direct {v1, p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$10$1;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$10;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1446
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$10;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->v(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/util/GPSTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bzbs/lib/survey/util/GPSTracker;->b()D

    move-result-wide v0

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$10;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->v(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/util/GPSTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bzbs/lib/survey/util/GPSTracker;->c()D

    move-result-wide v0

    cmpl-double v0, v0, v4

    if-nez v0, :cond_a4

    .line 1447
    :cond_77
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$10;->a:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1451
    :goto_7f
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$10;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$10;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v1, v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->v(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/util/GPSTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bzbs/lib/survey/util/GPSTracker;->b()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->m:D

    .line 1452
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$10;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$10;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v1, v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->v(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/util/GPSTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bzbs/lib/survey/util/GPSTracker;->c()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->n:D

    goto :goto_2c

    .line 1449
    :cond_a4
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$10;->a:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$10;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

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

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$10;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

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

    goto :goto_7f
.end method
