.class Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter$1;
.super Ljava/lang/Object;
.source "StampListGiftFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter;->a(Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter$StampViewHolder;I)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/bean/StampAgency;

.field final synthetic b:Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter;Lcom/bzbs/bean/StampAgency;)V
    .registers 3

    .prologue
    .line 452
    iput-object p1, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter$1;->b:Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter;

    iput-object p2, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter$1;->a:Lcom/bzbs/bean/StampAgency;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 455
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter$1;->b:Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter;

    iget-object v1, v1, Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter;->b:Lcom/samsung/privilege/fragment/StampListGiftFragment;

    invoke-virtual {v1}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 456
    const-string/jumbo v1, "stamp_agency"

    iget-object v2, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter$1;->a:Lcom/bzbs/bean/StampAgency;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 457
    iget-object v1, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter$1;->b:Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter;

    iget-object v1, v1, Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter;->b:Lcom/samsung/privilege/fragment/StampListGiftFragment;

    invoke-virtual {v1, v0}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->startActivity(Landroid/content/Intent;)V

    .line 459
    const-string/jumbo v0, "Stamp List"

    const-string/jumbo v1, "Click Stamp List"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter$1;->a:Lcom/bzbs/bean/StampAgency;

    iget-object v3, v3, Lcom/bzbs/bean/StampAgency;->agencyId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter$1;->a:Lcom/bzbs/bean/StampAgency;

    iget-object v3, v3, Lcom/bzbs/bean/StampAgency;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    return-void
.end method
