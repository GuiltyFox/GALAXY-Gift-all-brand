.class Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;
.super Ljava/lang/Object;
.source "SearchView.java"


# instance fields
.field private a:Ljava/lang/reflect/Method;

.field private b:Ljava/lang/reflect/Method;

.field private c:Ljava/lang/reflect/Method;

.field private d:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>()V
    .registers 6

    .prologue
    .line 1811
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1813
    :try_start_3
    const-class v0, Landroid/widget/AutoCompleteTextView;

    const-string/jumbo v1, "doBeforeTextChanged"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->a:Ljava/lang/reflect/Method;

    .line 1815
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->a:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_17
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_17} :catch_69

    .line 1820
    :goto_17
    :try_start_17
    const-class v0, Landroid/widget/AutoCompleteTextView;

    const-string/jumbo v1, "doAfterTextChanged"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->b:Ljava/lang/reflect/Method;

    .line 1822
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_2b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_17 .. :try_end_2b} :catch_67

    .line 1827
    :goto_2b
    :try_start_2b
    const-class v0, Landroid/widget/AutoCompleteTextView;

    const-string/jumbo v1, "ensureImeVisible"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->c:Ljava/lang/reflect/Method;

    .line 1829
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->c:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_44
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2b .. :try_end_44} :catch_65

    .line 1834
    :goto_44
    :try_start_44
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    const-string/jumbo v1, "showSoftInputUnchecked"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/os/ResultReceiver;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->d:Ljava/lang/reflect/Method;

    .line 1836
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->d:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_62
    .catch Ljava/lang/NoSuchMethodException; {:try_start_44 .. :try_end_62} :catch_63

    .line 1840
    :goto_62
    return-void

    .line 1837
    :catch_63
    move-exception v0

    goto :goto_62

    .line 1830
    :catch_65
    move-exception v0

    goto :goto_44

    .line 1823
    :catch_67
    move-exception v0

    goto :goto_2b

    .line 1816
    :catch_69
    move-exception v0

    goto :goto_17
.end method


# virtual methods
.method a(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;I)V
    .registers 8

    .prologue
    .line 1870
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->d:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_19

    .line 1872
    :try_start_4
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->d:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_17} :catch_18

    .line 1880
    :goto_17
    return-void

    .line 1874
    :catch_18
    move-exception v0

    .line 1879
    :cond_19
    invoke-virtual {p1, p2, p3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_17
.end method

.method a(Landroid/widget/AutoCompleteTextView;)V
    .registers 4

    .prologue
    .line 1843
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_c

    .line 1845
    :try_start_4
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->a:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    .line 1849
    :cond_c
    :goto_c
    return-void

    .line 1846
    :catch_d
    move-exception v0

    goto :goto_c
.end method

.method a(Landroid/widget/AutoCompleteTextView;Z)V
    .registers 7

    .prologue
    .line 1861
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_13

    .line 1863
    :try_start_4
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->c:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_13} :catch_14

    .line 1867
    :cond_13
    :goto_13
    return-void

    .line 1864
    :catch_14
    move-exception v0

    goto :goto_13
.end method

.method b(Landroid/widget/AutoCompleteTextView;)V
    .registers 4

    .prologue
    .line 1852
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_c

    .line 1854
    :try_start_4
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    .line 1858
    :cond_c
    :goto_c
    return-void

    .line 1855
    :catch_d
    move-exception v0

    goto :goto_c
.end method
