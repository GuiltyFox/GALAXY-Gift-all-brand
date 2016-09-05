.class final Lcom/samsung/privilege/util/DialogMonthYear$9;
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
    .line 168
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogMonthYear$9;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogMonthYear$9;->a:Landroid/app/Dialog;

    invoke-static {v0, p1}, Lcom/samsung/privilege/util/DialogMonthYear;->a(Landroid/app/Dialog;Landroid/view/View;)V

    .line 171
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/samsung/privilege/util/DialogMonthYear;->a(I)I

    .line 172
    return-void
.end method
