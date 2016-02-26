.class Lcom/samsung/privilege/activity/DashboardFragmentNew$3;
.super Ljava/lang/Object;
.source "DashboardFragmentNew.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/DashboardFragmentNew;->InitialDashboardItemPremium(Landroid/view/ViewGroup;ZZZ)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$3;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    .line 1120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/DashboardFragmentNew$3;)Lcom/samsung/privilege/activity/DashboardFragmentNew;
    .registers 2

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$3;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1124
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$3;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1125
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$3;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    const v3, 0x7f09001d

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1126
    iget-object v2, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$3;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    const v3, 0x7f090361

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$3;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    const v4, 0x7f09035a

    invoke-virtual {v3, v4}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/samsung/privilege/activity/DashboardFragmentNew$3$1;

    invoke-direct {v4, p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew$3$1;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew$3;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1130
    iget-object v3, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$3;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    const v4, 0x7f090359

    invoke-virtual {v3, v4}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/samsung/privilege/activity/DashboardFragmentNew$3$2;

    invoke-direct {v4, p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew$3$2;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew$3;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1146
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1147
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1149
    return-void
.end method
