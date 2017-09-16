.class Lcom/samsung/privilege/activity/StampDetailGiftActivity$AgencyListAdapter$1;
.super Ljava/lang/Object;
.source "StampDetailGiftActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/StampDetailGiftActivity$AgencyListAdapter;->a(Lcom/samsung/privilege/activity/StampDetailGiftActivity$AgencyListAdapter$AgencyViewHolder;I)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/bean/StampAgency;

.field final synthetic b:Lcom/samsung/privilege/activity/StampDetailGiftActivity$AgencyListAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity$AgencyListAdapter;Lcom/bzbs/bean/StampAgency;)V
    .registers 3

    .prologue
    .line 1428
    iput-object p1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$AgencyListAdapter$1;->b:Lcom/samsung/privilege/activity/StampDetailGiftActivity$AgencyListAdapter;

    iput-object p2, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$AgencyListAdapter$1;->a:Lcom/bzbs/bean/StampAgency;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 1431
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$AgencyListAdapter$1;->b:Lcom/samsung/privilege/activity/StampDetailGiftActivity$AgencyListAdapter;

    iget-object v1, v1, Lcom/samsung/privilege/activity/StampDetailGiftActivity$AgencyListAdapter;->b:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1432
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1433
    const-string/jumbo v1, "stamp_agency"

    iget-object v2, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$AgencyListAdapter$1;->a:Lcom/bzbs/bean/StampAgency;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1434
    iget-object v1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$AgencyListAdapter$1;->b:Lcom/samsung/privilege/activity/StampDetailGiftActivity$AgencyListAdapter;

    iget-object v1, v1, Lcom/samsung/privilege/activity/StampDetailGiftActivity$AgencyListAdapter;->b:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    invoke-virtual {v1, v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->startActivity(Landroid/content/Intent;)V

    .line 1436
    const-string/jumbo v0, "Stamp Profile"

    const-string/jumbo v1, "Click Other Card"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$AgencyListAdapter$1;->a:Lcom/bzbs/bean/StampAgency;

    iget-object v3, v3, Lcom/bzbs/bean/StampAgency;->agencyId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$AgencyListAdapter$1;->a:Lcom/bzbs/bean/StampAgency;

    iget-object v3, v3, Lcom/bzbs/bean/StampAgency;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    return-void
.end method
