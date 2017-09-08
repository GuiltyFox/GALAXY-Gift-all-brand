.class Lcom/samsung/privilege/util/DialogLoginGift$30$1;
.super Ljava/lang/Object;
.source "DialogLoginGift.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogLoginGift$30;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/util/DialogLoginGift$30;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/DialogLoginGift$30;)V
    .registers 2

    .prologue
    .line 1729
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogLoginGift$30$1;->a:Lcom/samsung/privilege/util/DialogLoginGift$30;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .prologue
    .line 1732
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$30$1;->a:Lcom/samsung/privilege/util/DialogLoginGift$30;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$30;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$30$1;->a:Lcom/samsung/privilege/util/DialogLoginGift$30;

    iget-object v1, v1, Lcom/samsung/privilege/util/DialogLoginGift$30;->d:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1733
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1734
    return-void
.end method
