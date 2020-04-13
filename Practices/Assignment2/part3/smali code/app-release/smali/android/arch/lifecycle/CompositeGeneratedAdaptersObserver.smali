.class public Landroid/arch/lifecycle/CompositeGeneratedAdaptersObserver;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/arch/lifecycle/GenericLifecycleObserver;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final a:[Landroid/arch/lifecycle/b;


# direct methods
.method constructor <init>([Landroid/arch/lifecycle/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/arch/lifecycle/CompositeGeneratedAdaptersObserver;->a:[Landroid/arch/lifecycle/b;

    return-void
.end method


# virtual methods
.method public final a(Landroid/arch/lifecycle/e;Landroid/arch/lifecycle/c$a;)V
    .locals 0

    new-instance p1, Landroid/arch/lifecycle/i;

    invoke-direct {p1}, Landroid/arch/lifecycle/i;-><init>()V

    return-void
.end method
