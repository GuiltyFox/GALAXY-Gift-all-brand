.class final Lcom/samsung/privilege/util/DialogMonthYear$5;
.super Ljava/lang/Object;
.source "DialogMonthYear.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogMonthYear;->a(Landroid/app/Dialog;Landroid/widget/TextView;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Landroid/app/Dialog;)V
    .registers 2

    .prologue
    .line 144
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogMonthYear$5;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogMonthYear$5;->a:Landroid/app/Dialog;

    invoke-static {v0, p1}, Lcom/samsung/privilege/util/DialogMonthYear;->a(Landroid/app/Dialog;Landroid/view/View;)V

    .line 147
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/samsung/privilege/util/DialogMonthYear;->a(I)I

    .line 148
    return-void
.end method
