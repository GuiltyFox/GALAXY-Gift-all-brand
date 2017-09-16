.class Lcom/samsung/privilege/fragment/StampListGiftFragment$4;
.super Ljava/lang/Object;
.source "StampListGiftFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/fragment/StampListGiftFragment;->a(I)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/fragment/StampListGiftFragment;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/fragment/StampListGiftFragment;)V
    .registers 2

    .prologue
    .line 262
    iput-object p1, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$4;->a:Lcom/samsung/privilege/fragment/StampListGiftFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 265
    iget-object v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$4;->a:Lcom/samsung/privilege/fragment/StampListGiftFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->g(Lcom/samsung/privilege/fragment/StampListGiftFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10050a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 266
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 268
    return-void
.end method
