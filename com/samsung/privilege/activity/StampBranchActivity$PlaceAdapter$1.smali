.class Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter$1;
.super Ljava/lang/Object;
.source "StampBranchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter;->a(Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter$HistoryViewHolder;I)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/bean/Place;

.field final synthetic b:Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter;Lcom/bzbs/bean/Place;)V
    .registers 3

    .prologue
    .line 386
    iput-object p1, p0, Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter$1;->b:Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter;

    iput-object p2, p0, Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter$1;->a:Lcom/bzbs/bean/Place;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 389
    const-string/jumbo v0, "http://maps.google.com/maps"

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?saddr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter$1;->b:Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter;

    iget-object v1, v1, Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter;->b:Lcom/samsung/privilege/activity/StampBranchActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/StampBranchActivity;->c(Lcom/samsung/privilege/activity/StampBranchActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&daddr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter$1;->a:Lcom/bzbs/bean/Place;

    iget v1, v1, Lcom/bzbs/bean/Place;->latitude:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter$1;->a:Lcom/bzbs/bean/Place;

    iget v1, v1, Lcom/bzbs/bean/Place;->longitude:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 393
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 394
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter$1;->b:Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter;

    iget-object v0, v0, Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter;->b:Lcom/samsung/privilege/activity/StampBranchActivity;

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/StampBranchActivity;->startActivity(Landroid/content/Intent;)V

    .line 395
    return-void
.end method
