.class final Lcom/samsung/privilege/util/DialogMonthYear$3;
.super Ljava/lang/Object;
.source "DialogMonthYear.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogMonthYear;->a(Landroid/content/Context;Landroid/widget/TextView;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Landroid/app/Dialog;)V
    .registers 2

    .prologue
    .line 50
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogMonthYear$3;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 52
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 53
    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v1

    if-nez v1, :cond_28

    .line 54
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogMonthYear$3;->a:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogMonthYear$3;->a:Landroid/app/Dialog;

    const v2, 0x7f10058c

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/DialogMonthYear;->a(Landroid/app/Dialog;Landroid/view/View;)V

    .line 79
    :cond_19
    :goto_19
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogMonthYear$3;->a:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogMonthYear$3;->a:Landroid/app/Dialog;

    const v2, 0x7f1005ae

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/DialogMonthYear;->b(Landroid/app/Dialog;Landroid/view/View;)V

    .line 80
    return-void

    .line 55
    :cond_28
    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3e

    .line 56
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogMonthYear$3;->a:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogMonthYear$3;->a:Landroid/app/Dialog;

    const v2, 0x7f100592

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/DialogMonthYear;->a(Landroid/app/Dialog;Landroid/view/View;)V

    goto :goto_19

    .line 57
    :cond_3e
    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_54

    .line 58
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogMonthYear$3;->a:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogMonthYear$3;->a:Landroid/app/Dialog;

    const v2, 0x7f10058d

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/DialogMonthYear;->a(Landroid/app/Dialog;Landroid/view/View;)V

    goto :goto_19

    .line 59
    :cond_54
    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6a

    .line 60
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogMonthYear$3;->a:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogMonthYear$3;->a:Landroid/app/Dialog;

    const v2, 0x7f100593

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/DialogMonthYear;->a(Landroid/app/Dialog;Landroid/view/View;)V

    goto :goto_19

    .line 61
    :cond_6a
    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_80

    .line 62
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogMonthYear$3;->a:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogMonthYear$3;->a:Landroid/app/Dialog;

    const v2, 0x7f10058e

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/DialogMonthYear;->a(Landroid/app/Dialog;Landroid/view/View;)V

    goto :goto_19

    .line 63
    :cond_80
    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_96

    .line 64
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogMonthYear$3;->a:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogMonthYear$3;->a:Landroid/app/Dialog;

    const v2, 0x7f100594

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/DialogMonthYear;->a(Landroid/app/Dialog;Landroid/view/View;)V

    goto :goto_19

    .line 65
    :cond_96
    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_ad

    .line 66
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogMonthYear$3;->a:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogMonthYear$3;->a:Landroid/app/Dialog;

    const v2, 0x7f10058f

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/DialogMonthYear;->a(Landroid/app/Dialog;Landroid/view/View;)V

    goto/16 :goto_19

    .line 67
    :cond_ad
    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_c4

    .line 68
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogMonthYear$3;->a:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogMonthYear$3;->a:Landroid/app/Dialog;

    const v2, 0x7f100595

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/DialogMonthYear;->a(Landroid/app/Dialog;Landroid/view/View;)V

    goto/16 :goto_19

    .line 69
    :cond_c4
    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_dc

    .line 70
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogMonthYear$3;->a:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogMonthYear$3;->a:Landroid/app/Dialog;

    const v2, 0x7f100590

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/DialogMonthYear;->a(Landroid/app/Dialog;Landroid/view/View;)V

    goto/16 :goto_19

    .line 71
    :cond_dc
    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_f4

    .line 72
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogMonthYear$3;->a:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogMonthYear$3;->a:Landroid/app/Dialog;

    const v2, 0x7f100596

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/DialogMonthYear;->a(Landroid/app/Dialog;Landroid/view/View;)V

    goto/16 :goto_19

    .line 73
    :cond_f4
    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_10c

    .line 74
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogMonthYear$3;->a:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogMonthYear$3;->a:Landroid/app/Dialog;

    const v2, 0x7f100591

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/DialogMonthYear;->a(Landroid/app/Dialog;Landroid/view/View;)V

    goto/16 :goto_19

    .line 75
    :cond_10c
    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_19

    .line 76
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogMonthYear$3;->a:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogMonthYear$3;->a:Landroid/app/Dialog;

    const v2, 0x7f100597

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/DialogMonthYear;->a(Landroid/app/Dialog;Landroid/view/View;)V

    goto/16 :goto_19
.end method
