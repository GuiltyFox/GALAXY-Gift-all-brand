.class final Lcom/samsung/privilege/util/DialogMonthYear$24;
.super Ljava/lang/Object;
.source "DialogMonthYear.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogMonthYear;->b(Landroid/app/Dialog;Landroid/widget/TextView;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Landroid/app/Dialog;)V
    .registers 2

    .prologue
    .line 341
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogMonthYear$24;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 343
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogMonthYear$24;->a:Landroid/app/Dialog;

    invoke-static {v0, p1}, Lcom/samsung/privilege/util/DialogMonthYear;->b(Landroid/app/Dialog;Landroid/view/View;)V

    .line 344
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogMonthYear$24;->a:Landroid/app/Dialog;

    const v1, 0x7f1005dd

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/privilege/util/DialogMonthYear;->b(I)I

    .line 345
    return-void
.end method
