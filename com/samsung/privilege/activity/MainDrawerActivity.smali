.class public Lcom/samsung/privilege/activity/MainDrawerActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "MainDrawerActivity.java"


# instance fields
.field private a:[Ljava/lang/String;

.field private b:Landroid/support/v4/widget/DrawerLayout;

.field private c:Landroid/widget/ListView;

.field private d:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    return-void
.end method

.method private a(I)V
    .registers 4

    .prologue
    .line 105
    const v0, 0x7f09023e

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 108
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainDrawerActivity;->c:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 109
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainDrawerActivity;->a:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainDrawerActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainDrawerActivity;->b:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainDrawerActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->i(Landroid/view/View;)V

    .line 111
    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/MainDrawerActivity;I)V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/MainDrawerActivity;->a(I)V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 87
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v0, 0x7f040034

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainDrawerActivity;->setContentView(I)V

    .line 29
    const-string/jumbo v0, "test"

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainDrawerActivity;->d:Ljava/lang/CharSequence;

    .line 31
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "one"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "two"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "three"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainDrawerActivity;->a:[Ljava/lang/String;

    .line 32
    const v0, 0x7f100170

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainDrawerActivity;->b:Landroid/support/v4/widget/DrawerLayout;

    .line 33
    const v0, 0x7f100172

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainDrawerActivity;->c:Landroid/widget/ListView;

    .line 39
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainDrawerActivity;->c:Landroid/widget/ListView;

    new-instance v1, Lcom/samsung/privilege/activity/MainDrawerActivity$DrawerItemClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/privilege/activity/MainDrawerActivity$DrawerItemClickListener;-><init>(Lcom/samsung/privilege/activity/MainDrawerActivity;Lcom/samsung/privilege/activity/MainDrawerActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 67
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3

    .prologue
    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 81
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 4

    .prologue
    .line 115
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainDrawerActivity;->d:Ljava/lang/CharSequence;

    .line 116
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainDrawerActivity;->b()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainDrawerActivity;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->a(Ljava/lang/CharSequence;)V

    .line 117
    return-void
.end method
