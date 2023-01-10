
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00009117          	auipc	sp,0x9
    80000004:	8f013103          	ld	sp,-1808(sp) # 800088f0 <_GLOBAL_OFFSET_TABLE_+0x58>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	31c050ef          	jal	ra,80005338 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv14supervisorTrapEv>:
.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:

    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    csrw sscratch, sp
    80001004:	14011073          	csrw	sscratch,sp
    sd x0, 0(sp)
    80001008:	00013023          	sd	zero,0(sp)
    sd x1, 8(sp)
    8000100c:	00113423          	sd	ra,8(sp)
    sd x2, 16(sp)
    80001010:	00213823          	sd	sp,16(sp)
    sd x3, 24(sp)
    80001014:	00313c23          	sd	gp,24(sp)
    sd x4, 32(sp)
    80001018:	02413023          	sd	tp,32(sp)
    sd x5, 40(sp)
    8000101c:	02513423          	sd	t0,40(sp)
    sd x6, 48(sp)
    80001020:	02613823          	sd	t1,48(sp)
    sd x7, 56(sp)
    80001024:	02713c23          	sd	t2,56(sp)
    sd x8, 64(sp)
    80001028:	04813023          	sd	s0,64(sp)
    sd x9, 72(sp)
    8000102c:	04913423          	sd	s1,72(sp)
    sd x10, 80(sp)
    80001030:	04a13823          	sd	a0,80(sp)
    sd x11, 88(sp)
    80001034:	04b13c23          	sd	a1,88(sp)
    sd x12, 96(sp)
    80001038:	06c13023          	sd	a2,96(sp)
    sd x13, 104(sp)
    8000103c:	06d13423          	sd	a3,104(sp)
    sd x14, 112(sp)
    80001040:	06e13823          	sd	a4,112(sp)
    sd x15, 120(sp)
    80001044:	06f13c23          	sd	a5,120(sp)
    sd x16, 128(sp)
    80001048:	09013023          	sd	a6,128(sp)
    sd x17, 136(sp)
    8000104c:	09113423          	sd	a7,136(sp)
    sd x18, 144(sp)
    80001050:	09213823          	sd	s2,144(sp)
    sd x19, 152(sp)
    80001054:	09313c23          	sd	s3,152(sp)
    sd x20, 160(sp)
    80001058:	0b413023          	sd	s4,160(sp)
    sd x21, 168(sp)
    8000105c:	0b513423          	sd	s5,168(sp)
    sd x22, 176(sp)
    80001060:	0b613823          	sd	s6,176(sp)
    sd x23, 184(sp)
    80001064:	0b713c23          	sd	s7,184(sp)
    sd x24, 192(sp)
    80001068:	0d813023          	sd	s8,192(sp)
    sd x25, 200(sp)
    8000106c:	0d913423          	sd	s9,200(sp)
    sd x26, 208(sp)
    80001070:	0da13823          	sd	s10,208(sp)
    sd x27, 216(sp)
    80001074:	0db13c23          	sd	s11,216(sp)
    sd x28, 224(sp)
    80001078:	0fc13023          	sd	t3,224(sp)
    sd x29, 232(sp)
    8000107c:	0fd13423          	sd	t4,232(sp)
    sd x30, 240(sp)
    80001080:	0fe13823          	sd	t5,240(sp)
    sd x31, 248(sp)
    80001084:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    80001088:	1c8030ef          	jal	ra,80004250 <_ZN5Riscv20handleSupervisorTrapEv>

    ld x0, 0(sp)
    8000108c:	00013003          	ld	zero,0(sp)
    ld x1, 8(sp)
    80001090:	00813083          	ld	ra,8(sp)
    ld x2, 16(sp)
    80001094:	01013103          	ld	sp,16(sp)
    ld x3, 24(sp)
    80001098:	01813183          	ld	gp,24(sp)
    ld x4, 32(sp)
    8000109c:	02013203          	ld	tp,32(sp)
    ld x5, 40(sp)
    800010a0:	02813283          	ld	t0,40(sp)
    ld x6, 48(sp)
    800010a4:	03013303          	ld	t1,48(sp)
    ld x7, 56(sp)
    800010a8:	03813383          	ld	t2,56(sp)
    ld x8, 64(sp)
    800010ac:	04013403          	ld	s0,64(sp)
    ld x9, 72(sp)
    800010b0:	04813483          	ld	s1,72(sp)
    ld x10, 80(sp)
    800010b4:	05013503          	ld	a0,80(sp)
    ld x11, 88(sp)
    800010b8:	05813583          	ld	a1,88(sp)
    ld x12, 96(sp)
    800010bc:	06013603          	ld	a2,96(sp)
    ld x13, 104(sp)
    800010c0:	06813683          	ld	a3,104(sp)
    ld x14, 112(sp)
    800010c4:	07013703          	ld	a4,112(sp)
    ld x15, 120(sp)
    800010c8:	07813783          	ld	a5,120(sp)
    ld x16, 128(sp)
    800010cc:	08013803          	ld	a6,128(sp)
    ld x17, 136(sp)
    800010d0:	08813883          	ld	a7,136(sp)
    ld x18, 144(sp)
    800010d4:	09013903          	ld	s2,144(sp)
    ld x19, 152(sp)
    800010d8:	09813983          	ld	s3,152(sp)
    ld x20, 160(sp)
    800010dc:	0a013a03          	ld	s4,160(sp)
    ld x21, 168(sp)
    800010e0:	0a813a83          	ld	s5,168(sp)
    ld x22, 176(sp)
    800010e4:	0b013b03          	ld	s6,176(sp)
    ld x23, 184(sp)
    800010e8:	0b813b83          	ld	s7,184(sp)
    ld x24, 192(sp)
    800010ec:	0c013c03          	ld	s8,192(sp)
    ld x25, 200(sp)
    800010f0:	0c813c83          	ld	s9,200(sp)
    ld x26, 208(sp)
    800010f4:	0d013d03          	ld	s10,208(sp)
    ld x27, 216(sp)
    800010f8:	0d813d83          	ld	s11,216(sp)
    ld x28, 224(sp)
    800010fc:	0e013e03          	ld	t3,224(sp)
    ld x29, 232(sp)
    80001100:	0e813e83          	ld	t4,232(sp)
    ld x30, 240(sp)
    80001104:	0f013f03          	ld	t5,240(sp)
    ld x31, 248(sp)
    80001108:	0f813f83          	ld	t6,248(sp)

    addi sp, sp, 256
    8000110c:	10010113          	addi	sp,sp,256

    80001110:	10200073          	sret
	...

0000000080001120 <_ZN5Riscv13pushRegistersEv>:
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function
_ZN5Riscv13pushRegistersEv:
    addi sp, sp, -256
    80001120:	f0010113          	addi	sp,sp,-256
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001124:	00313c23          	sd	gp,24(sp)
    80001128:	02413023          	sd	tp,32(sp)
    8000112c:	02513423          	sd	t0,40(sp)
    80001130:	02613823          	sd	t1,48(sp)
    80001134:	02713c23          	sd	t2,56(sp)
    80001138:	04813023          	sd	s0,64(sp)
    8000113c:	04913423          	sd	s1,72(sp)
    80001140:	04a13823          	sd	a0,80(sp)
    80001144:	04b13c23          	sd	a1,88(sp)
    80001148:	06c13023          	sd	a2,96(sp)
    8000114c:	06d13423          	sd	a3,104(sp)
    80001150:	06e13823          	sd	a4,112(sp)
    80001154:	06f13c23          	sd	a5,120(sp)
    80001158:	09013023          	sd	a6,128(sp)
    8000115c:	09113423          	sd	a7,136(sp)
    80001160:	09213823          	sd	s2,144(sp)
    80001164:	09313c23          	sd	s3,152(sp)
    80001168:	0b413023          	sd	s4,160(sp)
    8000116c:	0b513423          	sd	s5,168(sp)
    80001170:	0b613823          	sd	s6,176(sp)
    80001174:	0b713c23          	sd	s7,184(sp)
    80001178:	0d813023          	sd	s8,192(sp)
    8000117c:	0d913423          	sd	s9,200(sp)
    80001180:	0da13823          	sd	s10,208(sp)
    80001184:	0db13c23          	sd	s11,216(sp)
    80001188:	0fc13023          	sd	t3,224(sp)
    8000118c:	0fd13423          	sd	t4,232(sp)
    80001190:	0fe13823          	sd	t5,240(sp)
    80001194:	0ff13c23          	sd	t6,248(sp)
    ret
    80001198:	00008067          	ret

000000008000119c <_ZN5Riscv12popRegistersEv>:
.global _ZN5Riscv12popRegistersEv
.type _ZN5Riscv12popRegistersEv, @function
_ZN5Riscv12popRegistersEv:
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    8000119c:	01813183          	ld	gp,24(sp)
    800011a0:	02013203          	ld	tp,32(sp)
    800011a4:	02813283          	ld	t0,40(sp)
    800011a8:	03013303          	ld	t1,48(sp)
    800011ac:	03813383          	ld	t2,56(sp)
    800011b0:	04013403          	ld	s0,64(sp)
    800011b4:	04813483          	ld	s1,72(sp)
    800011b8:	05013503          	ld	a0,80(sp)
    800011bc:	05813583          	ld	a1,88(sp)
    800011c0:	06013603          	ld	a2,96(sp)
    800011c4:	06813683          	ld	a3,104(sp)
    800011c8:	07013703          	ld	a4,112(sp)
    800011cc:	07813783          	ld	a5,120(sp)
    800011d0:	08013803          	ld	a6,128(sp)
    800011d4:	08813883          	ld	a7,136(sp)
    800011d8:	09013903          	ld	s2,144(sp)
    800011dc:	09813983          	ld	s3,152(sp)
    800011e0:	0a013a03          	ld	s4,160(sp)
    800011e4:	0a813a83          	ld	s5,168(sp)
    800011e8:	0b013b03          	ld	s6,176(sp)
    800011ec:	0b813b83          	ld	s7,184(sp)
    800011f0:	0c013c03          	ld	s8,192(sp)
    800011f4:	0c813c83          	ld	s9,200(sp)
    800011f8:	0d013d03          	ld	s10,208(sp)
    800011fc:	0d813d83          	ld	s11,216(sp)
    80001200:	0e013e03          	ld	t3,224(sp)
    80001204:	0e813e83          	ld	t4,232(sp)
    80001208:	0f013f03          	ld	t5,240(sp)
    8000120c:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001210:	10010113          	addi	sp,sp,256
    ret
    80001214:	00008067          	ret

0000000080001218 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3PCB13contextSwitchEPNS_7ContextES1_
.type _ZN3PCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3PCB13contextSwitchEPNS_7ContextES1_:
    #a0 - &old->Context
    #a1 - &running->Context
    sd sp, 0 * 8(a0)
    80001218:	00253023          	sd	sp,0(a0) # 1000 <_entry-0x7ffff000>
    sd ra, 1 * 8(a0)
    8000121c:	00153423          	sd	ra,8(a0)

    ld sp, 0 * 8(a1)
    80001220:	0005b103          	ld	sp,0(a1)
    ld ra, 1 * 8(a1)
    80001224:	0085b083          	ld	ra,8(a1)

    ret
    80001228:	00008067          	ret

000000008000122c <_ZN3PCB20contextSwitchExitingEPNS_7ContextE>:

.global _ZN3PCB20contextSwitchExitingEPNS_7ContextE
.type _ZN3PCB20contextSwitchExitingEPNS_7ContextE, @function
_ZN3PCB20contextSwitchExitingEPNS_7ContextE:
    #a0 - &running->Context
    ld sp, 0 * 8(a0)
    8000122c:	00053103          	ld	sp,0(a0)
    ld ra, 1 * 8(a0)
    80001230:	00853083          	ld	ra,8(a0)

    80001234:	00008067          	ret

0000000080001238 <_Z22thread_dispatch_kernelv>:
//
#include "../../h/syscall_c_kernel.hpp"


void thread_dispatch_kernel()
{
    80001238:	ff010113          	addi	sp,sp,-16
    8000123c:	00813423          	sd	s0,8(sp)
    80001240:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    80001244:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    80001248:	00000073          	ecall
}
    8000124c:	00813403          	ld	s0,8(sp)
    80001250:	01010113          	addi	sp,sp,16
    80001254:	00008067          	ret

0000000080001258 <_Z20sysCallGetCharOutputv>:

char sysCallGetCharOutput()
{
    80001258:	ff010113          	addi	sp,sp,-16
    8000125c:	00813423          	sd	s0,8(sp)
    80001260:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x43");
    80001264:	04300513          	li	a0,67

    __asm__ volatile("ecall");
    80001268:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000126c:	00050513          	mv	a0,a0
    return (char)result;
}
    80001270:	0ff57513          	andi	a0,a0,255
    80001274:	00813403          	ld	s0,8(sp)
    80001278:	01010113          	addi	sp,sp,16
    8000127c:	00008067          	ret

0000000080001280 <_Z18thread_exit_kernelv>:


int thread_exit_kernel()
{
    80001280:	ff010113          	addi	sp,sp,-16
    80001284:	00813423          	sd	s0,8(sp)
    80001288:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x12");
    8000128c:	01200513          	li	a0,18

    __asm__ volatile("ecall");
    80001290:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001294:	00050513          	mv	a0,a0
    return result;
    80001298:	0005051b          	sext.w	a0,a0
    8000129c:	00813403          	ld	s0,8(sp)
    800012a0:	01010113          	addi	sp,sp,16
    800012a4:	00008067          	ret

00000000800012a8 <_Z6strcpyPKcPc>:
//singleton slab allocator
static slab_allocator_t* slabAllocator = nullptr;

//helping functions
void strcpy(const char* src, char* dst)
{
    800012a8:	ff010113          	addi	sp,sp,-16
    800012ac:	00813423          	sd	s0,8(sp)
    800012b0:	01010413          	addi	s0,sp,16
    while(*src != '\0')
    800012b4:	00054783          	lbu	a5,0(a0)
    800012b8:	00078a63          	beqz	a5,800012cc <_Z6strcpyPKcPc+0x24>
    {
        *dst = *src;
    800012bc:	00f58023          	sb	a5,0(a1)
        src++; dst++;
    800012c0:	00150513          	addi	a0,a0,1
    800012c4:	00158593          	addi	a1,a1,1
    while(*src != '\0')
    800012c8:	fedff06f          	j	800012b4 <_Z6strcpyPKcPc+0xc>
    }
    *dst = *src;
    800012cc:	00f58023          	sb	a5,0(a1)
}
    800012d0:	00813403          	ld	s0,8(sp)
    800012d4:	01010113          	addi	sp,sp,16
    800012d8:	00008067          	ret

00000000800012dc <_Z17destroy_slab_listPP6slab_s>:

int destroy_slab_list(slab_t** slab)
{
    800012dc:	fd010113          	addi	sp,sp,-48
    800012e0:	02113423          	sd	ra,40(sp)
    800012e4:	02813023          	sd	s0,32(sp)
    800012e8:	00913c23          	sd	s1,24(sp)
    800012ec:	01213823          	sd	s2,16(sp)
    800012f0:	01313423          	sd	s3,8(sp)
    800012f4:	01413023          	sd	s4,0(sp)
    800012f8:	03010413          	addi	s0,sp,48
    if(*slab == nullptr) return 0;
    800012fc:	00053783          	ld	a5,0(a0)
    80001300:	02078c63          	beqz	a5,80001338 <_Z17destroy_slab_listPP6slab_s+0x5c>
    80001304:	00050493          	mv	s1,a0
    size_t sz = (*slab)->owner->slab_size;
    80001308:	0107b783          	ld	a5,16(a5)
    8000130c:	0587b983          	ld	s3,88(a5)
    int totalBlocks = 0;
    80001310:	00000913          	li	s2,0
    while(*slab != nullptr)
    80001314:	0004b503          	ld	a0,0(s1)
    80001318:	02050263          	beqz	a0,8000133c <_Z17destroy_slab_listPP6slab_s+0x60>
    {
        slab_t* nextSlab = (*slab)->next;
    8000131c:	00853a03          	ld	s4,8(a0)
        buddy_free(*slab, sz);
    80001320:	00098593          	mv	a1,s3
    80001324:	00002097          	auipc	ra,0x2
    80001328:	b2c080e7          	jalr	-1236(ra) # 80002e50 <_Z10buddy_freePvm>
        *slab = nextSlab;
    8000132c:	0144b023          	sd	s4,0(s1)
        totalBlocks+=sz;
    80001330:	0129893b          	addw	s2,s3,s2
    while(*slab != nullptr)
    80001334:	fe1ff06f          	j	80001314 <_Z17destroy_slab_listPP6slab_s+0x38>
    if(*slab == nullptr) return 0;
    80001338:	00000913          	li	s2,0
    }
    return totalBlocks;
}
    8000133c:	00090513          	mv	a0,s2
    80001340:	02813083          	ld	ra,40(sp)
    80001344:	02013403          	ld	s0,32(sp)
    80001348:	01813483          	ld	s1,24(sp)
    8000134c:	01013903          	ld	s2,16(sp)
    80001350:	00813983          	ld	s3,8(sp)
    80001354:	00013a03          	ld	s4,0(sp)
    80001358:	03010113          	addi	sp,sp,48
    8000135c:	00008067          	ret

0000000080001360 <_Z10init_cacheP12kmem_cache_sPKcmmPFvPvES5_>:

void init_cache(kmem_cache_t* cachep, const char* cache_name, size_t slab_size, size_t obj_size, void (*ctor)(void*),void (*dtor)(void*))
{
    80001360:	fc010113          	addi	sp,sp,-64
    80001364:	02113c23          	sd	ra,56(sp)
    80001368:	02813823          	sd	s0,48(sp)
    8000136c:	02913423          	sd	s1,40(sp)
    80001370:	03213023          	sd	s2,32(sp)
    80001374:	01313c23          	sd	s3,24(sp)
    80001378:	01413823          	sd	s4,16(sp)
    8000137c:	01513423          	sd	s5,8(sp)
    80001380:	04010413          	addi	s0,sp,64
    80001384:	00050493          	mv	s1,a0
    80001388:	00058513          	mv	a0,a1
    8000138c:	00060a93          	mv	s5,a2
    80001390:	00068a13          	mv	s4,a3
    80001394:	00070993          	mv	s3,a4
    80001398:	00078913          	mv	s2,a5
    strcpy(cache_name, cachep->cacheName);
    8000139c:	00048593          	mv	a1,s1
    800013a0:	00000097          	auipc	ra,0x0
    800013a4:	f08080e7          	jalr	-248(ra) # 800012a8 <_Z6strcpyPKcPc>
    cachep->slab_size = slab_size;
    800013a8:	0554bc23          	sd	s5,88(s1)
    cachep->obj_size = obj_size;
    800013ac:	0744b023          	sd	s4,96(s1)
    cachep->ctor = ctor;
    800013b0:	0734b423          	sd	s3,104(s1)
    cachep->dtor = dtor;
    800013b4:	0724b823          	sd	s2,112(s1)

    cachep->slabs_empty = cachep->slabs_partial = cachep->slabs_full = nullptr;
    800013b8:	0404b423          	sd	zero,72(s1)
    800013bc:	0404b823          	sd	zero,80(s1)
    800013c0:	0404b023          	sd	zero,64(s1)
    cachep->errors = NO_ERROR;
    800013c4:	0604ac23          	sw	zero,120(s1)
}
    800013c8:	03813083          	ld	ra,56(sp)
    800013cc:	03013403          	ld	s0,48(sp)
    800013d0:	02813483          	ld	s1,40(sp)
    800013d4:	02013903          	ld	s2,32(sp)
    800013d8:	01813983          	ld	s3,24(sp)
    800013dc:	01013a03          	ld	s4,16(sp)
    800013e0:	00813a83          	ld	s5,8(sp)
    800013e4:	04010113          	addi	sp,sp,64
    800013e8:	00008067          	ret

00000000800013ec <_Z19slab_allocator_initP14buddyAllocator>:

slab_allocator_t* slab_allocator_init(buddyAllocator *buddy)
{
    800013ec:	fe010113          	addi	sp,sp,-32
    800013f0:	00113c23          	sd	ra,24(sp)
    800013f4:	00813823          	sd	s0,16(sp)
    800013f8:	00913423          	sd	s1,8(sp)
    800013fc:	02010413          	addi	s0,sp,32
    slab_allocator_t* slabAllocatorLocal = (slab_allocator_t*)(buddy + 1);
    80001400:	12050493          	addi	s1,a0,288

    for(size_t i = 0; i < CACHE_BUFFER_SIZE;i++)
    80001404:	00000793          	li	a5,0
    80001408:	0140006f          	j	8000141c <_Z19slab_allocator_initP14buddyAllocator+0x30>
        slabAllocatorLocal->cachesBuffers[i] = nullptr;
    8000140c:	00379713          	slli	a4,a5,0x3
    80001410:	00e50733          	add	a4,a0,a4
    80001414:	12073023          	sd	zero,288(a4)
    for(size_t i = 0; i < CACHE_BUFFER_SIZE;i++)
    80001418:	00178793          	addi	a5,a5,1
    8000141c:	00c00713          	li	a4,12
    80001420:	fef776e3          	bgeu	a4,a5,8000140c <_Z19slab_allocator_initP14buddyAllocator+0x20>

    init_cache(&slabAllocatorLocal->cacheOfCaches, "Cache of caches", CACHE_OF_CACHES_SLAB_SIZE, sizeof(kmem_cache_t), nullptr,nullptr);
    80001424:	00000793          	li	a5,0
    80001428:	00000713          	li	a4,0
    8000142c:	08000693          	li	a3,128
    80001430:	00200613          	li	a2,2
    80001434:	00007597          	auipc	a1,0x7
    80001438:	bec58593          	addi	a1,a1,-1044 # 80008020 <CONSOLE_STATUS+0x10>
    8000143c:	18850513          	addi	a0,a0,392
    80001440:	00000097          	auipc	ra,0x0
    80001444:	f20080e7          	jalr	-224(ra) # 80001360 <_Z10init_cacheP12kmem_cache_sPKcmmPFvPvES5_>

    return slabAllocatorLocal;
}
    80001448:	00048513          	mv	a0,s1
    8000144c:	01813083          	ld	ra,24(sp)
    80001450:	01013403          	ld	s0,16(sp)
    80001454:	00813483          	ld	s1,8(sp)
    80001458:	02010113          	addi	sp,sp,32
    8000145c:	00008067          	ret

0000000080001460 <_Z13checkSetIndexP6slab_si>:

bool checkSetIndex(slab_t* slab, int index)
{
    80001460:	ff010113          	addi	sp,sp,-16
    80001464:	00813423          	sd	s0,8(sp)
    80001468:	01010413          	addi	s0,sp,16
    return (uint8)slab->allocated[index / 8] & (1 << (index%8));
    8000146c:	41f5d79b          	sraiw	a5,a1,0x1f
    80001470:	01d7d79b          	srliw	a5,a5,0x1d
    80001474:	00b785bb          	addw	a1,a5,a1
    80001478:	4035d71b          	sraiw	a4,a1,0x3
    8000147c:	00e50533          	add	a0,a0,a4
    80001480:	02854503          	lbu	a0,40(a0)
    80001484:	0075f593          	andi	a1,a1,7
    80001488:	40f585bb          	subw	a1,a1,a5
    8000148c:	40b5553b          	sraw	a0,a0,a1
}
    80001490:	00157513          	andi	a0,a0,1
    80001494:	00813403          	ld	s0,8(sp)
    80001498:	01010113          	addi	sp,sp,16
    8000149c:	00008067          	ret

00000000800014a0 <_Z17setAllocatedIndexP6slab_si>:

void setAllocatedIndex(slab_t* slab, int index)
{
    800014a0:	ff010113          	addi	sp,sp,-16
    800014a4:	00813423          	sd	s0,8(sp)
    800014a8:	01010413          	addi	s0,sp,16
    slab->allocated[index / 8]=(uint8)slab->allocated[index/8] | (1 << (index%8));
    800014ac:	41f5d79b          	sraiw	a5,a1,0x1f
    800014b0:	01d7d79b          	srliw	a5,a5,0x1d
    800014b4:	00b785bb          	addw	a1,a5,a1
    800014b8:	4035d71b          	sraiw	a4,a1,0x3
    800014bc:	00e50533          	add	a0,a0,a4
    800014c0:	02850703          	lb	a4,40(a0)
    800014c4:	0075f593          	andi	a1,a1,7
    800014c8:	40f585bb          	subw	a1,a1,a5
    800014cc:	00100793          	li	a5,1
    800014d0:	00b795bb          	sllw	a1,a5,a1
    800014d4:	00b765b3          	or	a1,a4,a1
    800014d8:	02b50423          	sb	a1,40(a0)
}
    800014dc:	00813403          	ld	s0,8(sp)
    800014e0:	01010113          	addi	sp,sp,16
    800014e4:	00008067          	ret

00000000800014e8 <_Z14allocateObjectP6slab_s>:

void* allocateObject(slab_t* slab)
{
    800014e8:	fd010113          	addi	sp,sp,-48
    800014ec:	02113423          	sd	ra,40(sp)
    800014f0:	02813023          	sd	s0,32(sp)
    800014f4:	00913c23          	sd	s1,24(sp)
    800014f8:	01213823          	sd	s2,16(sp)
    800014fc:	01313423          	sd	s3,8(sp)
    80001500:	03010413          	addi	s0,sp,48
    80001504:	00050913          	mv	s2,a0
    if(slab == nullptr)
    80001508:	08050863          	beqz	a0,80001598 <_Z14allocateObjectP6slab_s+0xb0>
        return nullptr;
    int index = -1;
    void* addr = nullptr;
    for(size_t i = 0;i < slab->numOfObjects;i++)
    8000150c:	00000493          	li	s1,0
    80001510:	01893783          	ld	a5,24(s2)
    80001514:	02f4fe63          	bgeu	s1,a5,80001550 <_Z14allocateObjectP6slab_s+0x68>
    {
        if(!checkSetIndex(slab, i))
    80001518:	0004899b          	sext.w	s3,s1
    8000151c:	00098593          	mv	a1,s3
    80001520:	00090513          	mv	a0,s2
    80001524:	00000097          	auipc	ra,0x0
    80001528:	f3c080e7          	jalr	-196(ra) # 80001460 <_Z13checkSetIndexP6slab_si>
    8000152c:	00050663          	beqz	a0,80001538 <_Z14allocateObjectP6slab_s+0x50>
    for(size_t i = 0;i < slab->numOfObjects;i++)
    80001530:	00148493          	addi	s1,s1,1
    80001534:	fddff06f          	j	80001510 <_Z14allocateObjectP6slab_s+0x28>
        {
            addr = (void*)((size_t)slab + sizeof(slab_t)+ i*slab->owner->obj_size);
    80001538:	01093783          	ld	a5,16(s2)
    8000153c:	0607b783          	ld	a5,96(a5)
    80001540:	029784b3          	mul	s1,a5,s1
    80001544:	009904b3          	add	s1,s2,s1
    80001548:	22848493          	addi	s1,s1,552
            index = i;
            break;
    8000154c:	00c0006f          	j	80001558 <_Z14allocateObjectP6slab_s+0x70>
    void* addr = nullptr;
    80001550:	00000493          	li	s1,0
    int index = -1;
    80001554:	fff00993          	li	s3,-1
        }
    }
    if(addr == nullptr)
    80001558:	02048063          	beqz	s1,80001578 <_Z14allocateObjectP6slab_s+0x90>
        return nullptr;

    setAllocatedIndex(slab, index);
    8000155c:	00098593          	mv	a1,s3
    80001560:	00090513          	mv	a0,s2
    80001564:	00000097          	auipc	ra,0x0
    80001568:	f3c080e7          	jalr	-196(ra) # 800014a0 <_Z17setAllocatedIndexP6slab_si>
    slab->numOfAllocatedObjects++;
    8000156c:	02093783          	ld	a5,32(s2)
    80001570:	00178793          	addi	a5,a5,1
    80001574:	02f93023          	sd	a5,32(s2)

    return addr;
}
    80001578:	00048513          	mv	a0,s1
    8000157c:	02813083          	ld	ra,40(sp)
    80001580:	02013403          	ld	s0,32(sp)
    80001584:	01813483          	ld	s1,24(sp)
    80001588:	01013903          	ld	s2,16(sp)
    8000158c:	00813983          	ld	s3,8(sp)
    80001590:	03010113          	addi	sp,sp,48
    80001594:	00008067          	ret
        return nullptr;
    80001598:	00050493          	mv	s1,a0
    8000159c:	fddff06f          	j	80001578 <_Z14allocateObjectP6slab_s+0x90>

00000000800015a0 <_Z4fullP6slab_s>:

bool full(slab_t* slab)
{
    800015a0:	ff010113          	addi	sp,sp,-16
    800015a4:	00813423          	sd	s0,8(sp)
    800015a8:	01010413          	addi	s0,sp,16
    return slab->numOfAllocatedObjects == slab->numOfObjects;
    800015ac:	02053783          	ld	a5,32(a0)
    800015b0:	01853503          	ld	a0,24(a0)
    800015b4:	40f50533          	sub	a0,a0,a5
}
    800015b8:	00153513          	seqz	a0,a0
    800015bc:	00813403          	ld	s0,8(sp)
    800015c0:	01010113          	addi	sp,sp,16
    800015c4:	00008067          	ret

00000000800015c8 <_Z5emptyP6slab_s>:

bool empty(slab_t* slab)
{
    800015c8:	ff010113          	addi	sp,sp,-16
    800015cc:	00813423          	sd	s0,8(sp)
    800015d0:	01010413          	addi	s0,sp,16
    return slab->numOfAllocatedObjects == 0;
    800015d4:	02053503          	ld	a0,32(a0)
}
    800015d8:	00153513          	seqz	a0,a0
    800015dc:	00813403          	ld	s0,8(sp)
    800015e0:	01010113          	addi	sp,sp,16
    800015e4:	00008067          	ret

00000000800015e8 <_Z18insertIntoSlabListP6slab_sPS0_>:

void insertIntoSlabList(slab_t* slab, slab_t** slab_head)
{
    800015e8:	ff010113          	addi	sp,sp,-16
    800015ec:	00813423          	sd	s0,8(sp)
    800015f0:	01010413          	addi	s0,sp,16
    if(slab == nullptr)
    800015f4:	00050e63          	beqz	a0,80001610 <_Z18insertIntoSlabListP6slab_sPS0_+0x28>
        return;
    slab->prev = nullptr;
    800015f8:	00053023          	sd	zero,0(a0)
    slab->next = *slab_head;
    800015fc:	0005b783          	ld	a5,0(a1)
    80001600:	00f53423          	sd	a5,8(a0)
    if(*slab_head != nullptr)
    80001604:	00078463          	beqz	a5,8000160c <_Z18insertIntoSlabListP6slab_sPS0_+0x24>
        (*slab_head)->prev = slab;
    80001608:	00a7b023          	sd	a0,0(a5)
    *slab_head = slab;
    8000160c:	00a5b023          	sd	a0,0(a1)
}
    80001610:	00813403          	ld	s0,8(sp)
    80001614:	01010113          	addi	sp,sp,16
    80001618:	00008067          	ret

000000008000161c <_Z18removeFromSlabListP6slab_sPS0_>:

void removeFromSlabList(slab_t* slab, slab_t** slab_head)
{
    8000161c:	ff010113          	addi	sp,sp,-16
    80001620:	00813423          	sd	s0,8(sp)
    80001624:	01010413          	addi	s0,sp,16
    if(slab->prev == nullptr) //same as slab == *slab_head
    80001628:	00053783          	ld	a5,0(a0)
    8000162c:	02078663          	beqz	a5,80001658 <_Z18removeFromSlabListP6slab_sPS0_+0x3c>
        (*slab_head) = slab->next;
        slab->next = slab->prev = nullptr;
    }
    else
    {
        slab->prev->next = slab->next;
    80001630:	00853703          	ld	a4,8(a0)
    80001634:	00e7b423          	sd	a4,8(a5)
        if(slab->next) slab->next->prev = slab->prev;
    80001638:	00070663          	beqz	a4,80001644 <_Z18removeFromSlabListP6slab_sPS0_+0x28>
    8000163c:	00053783          	ld	a5,0(a0)
    80001640:	00f73023          	sd	a5,0(a4)
        slab->next = slab->prev = nullptr;
    80001644:	00053023          	sd	zero,0(a0)
    80001648:	00053423          	sd	zero,8(a0)
    }
}
    8000164c:	00813403          	ld	s0,8(sp)
    80001650:	01010113          	addi	sp,sp,16
    80001654:	00008067          	ret
        if(slab->next) slab->next->prev = nullptr;
    80001658:	00853783          	ld	a5,8(a0)
    8000165c:	00078463          	beqz	a5,80001664 <_Z18removeFromSlabListP6slab_sPS0_+0x48>
    80001660:	0007b023          	sd	zero,0(a5)
        (*slab_head) = slab->next;
    80001664:	00853783          	ld	a5,8(a0)
    80001668:	00f5b023          	sd	a5,0(a1)
        slab->next = slab->prev = nullptr;
    8000166c:	00053023          	sd	zero,0(a0)
    80001670:	00053423          	sd	zero,8(a0)
    80001674:	fd9ff06f          	j	8000164c <_Z18removeFromSlabListP6slab_sPS0_+0x30>

0000000080001678 <_Z16putPartialToFullP12kmem_cache_s>:

void putPartialToFull(kmem_cache_t* cachep)
{
    80001678:	fe010113          	addi	sp,sp,-32
    8000167c:	00113c23          	sd	ra,24(sp)
    80001680:	00813823          	sd	s0,16(sp)
    80001684:	00913423          	sd	s1,8(sp)
    80001688:	01213023          	sd	s2,0(sp)
    8000168c:	02010413          	addi	s0,sp,32
    80001690:	00050493          	mv	s1,a0
    slab_t* slab = cachep->slabs_partial;
    80001694:	05053903          	ld	s2,80(a0)
    removeFromSlabList(slab, &cachep->slabs_partial);
    80001698:	05050593          	addi	a1,a0,80
    8000169c:	00090513          	mv	a0,s2
    800016a0:	00000097          	auipc	ra,0x0
    800016a4:	f7c080e7          	jalr	-132(ra) # 8000161c <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_full);
    800016a8:	04848593          	addi	a1,s1,72
    800016ac:	00090513          	mv	a0,s2
    800016b0:	00000097          	auipc	ra,0x0
    800016b4:	f38080e7          	jalr	-200(ra) # 800015e8 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    800016b8:	01813083          	ld	ra,24(sp)
    800016bc:	01013403          	ld	s0,16(sp)
    800016c0:	00813483          	ld	s1,8(sp)
    800016c4:	00013903          	ld	s2,0(sp)
    800016c8:	02010113          	addi	sp,sp,32
    800016cc:	00008067          	ret

00000000800016d0 <_Z17putEmptyToPartialP12kmem_cache_s>:

void putEmptyToPartial(kmem_cache_t* cachep)
{
    800016d0:	fe010113          	addi	sp,sp,-32
    800016d4:	00113c23          	sd	ra,24(sp)
    800016d8:	00813823          	sd	s0,16(sp)
    800016dc:	00913423          	sd	s1,8(sp)
    800016e0:	01213023          	sd	s2,0(sp)
    800016e4:	02010413          	addi	s0,sp,32
    800016e8:	00050493          	mv	s1,a0
    slab_t* slab = cachep->slabs_empty;
    800016ec:	04053903          	ld	s2,64(a0)
    removeFromSlabList(slab, &cachep->slabs_empty);
    800016f0:	04050593          	addi	a1,a0,64
    800016f4:	00090513          	mv	a0,s2
    800016f8:	00000097          	auipc	ra,0x0
    800016fc:	f24080e7          	jalr	-220(ra) # 8000161c <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_partial);
    80001700:	05048593          	addi	a1,s1,80
    80001704:	00090513          	mv	a0,s2
    80001708:	00000097          	auipc	ra,0x0
    8000170c:	ee0080e7          	jalr	-288(ra) # 800015e8 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    80001710:	01813083          	ld	ra,24(sp)
    80001714:	01013403          	ld	s0,16(sp)
    80001718:	00813483          	ld	s1,8(sp)
    8000171c:	00013903          	ld	s2,0(sp)
    80001720:	02010113          	addi	sp,sp,32
    80001724:	00008067          	ret

0000000080001728 <_Z14removeFullSlabP12kmem_cache_sP6slab_s>:

void removeFullSlab(kmem_cache_t* cachep, slab_t* slab)
{
    80001728:	fe010113          	addi	sp,sp,-32
    8000172c:	00113c23          	sd	ra,24(sp)
    80001730:	00813823          	sd	s0,16(sp)
    80001734:	00913423          	sd	s1,8(sp)
    80001738:	01213023          	sd	s2,0(sp)
    8000173c:	02010413          	addi	s0,sp,32
    80001740:	00050913          	mv	s2,a0
    80001744:	00058493          	mv	s1,a1
    removeFromSlabList(slab, &cachep->slabs_full);
    80001748:	04850593          	addi	a1,a0,72
    8000174c:	00048513          	mv	a0,s1
    80001750:	00000097          	auipc	ra,0x0
    80001754:	ecc080e7          	jalr	-308(ra) # 8000161c <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_partial);
    80001758:	05090593          	addi	a1,s2,80
    8000175c:	00048513          	mv	a0,s1
    80001760:	00000097          	auipc	ra,0x0
    80001764:	e88080e7          	jalr	-376(ra) # 800015e8 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    80001768:	01813083          	ld	ra,24(sp)
    8000176c:	01013403          	ld	s0,16(sp)
    80001770:	00813483          	ld	s1,8(sp)
    80001774:	00013903          	ld	s2,0(sp)
    80001778:	02010113          	addi	sp,sp,32
    8000177c:	00008067          	ret

0000000080001780 <_Z17removePartialSlabP12kmem_cache_sP6slab_s>:

void removePartialSlab(kmem_cache_t * cachep, slab_t* slab)
{
    80001780:	fe010113          	addi	sp,sp,-32
    80001784:	00113c23          	sd	ra,24(sp)
    80001788:	00813823          	sd	s0,16(sp)
    8000178c:	00913423          	sd	s1,8(sp)
    80001790:	01213023          	sd	s2,0(sp)
    80001794:	02010413          	addi	s0,sp,32
    80001798:	00050913          	mv	s2,a0
    8000179c:	00058493          	mv	s1,a1
    removeFromSlabList(slab, &cachep->slabs_partial);
    800017a0:	05050593          	addi	a1,a0,80
    800017a4:	00048513          	mv	a0,s1
    800017a8:	00000097          	auipc	ra,0x0
    800017ac:	e74080e7          	jalr	-396(ra) # 8000161c <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_empty);
    800017b0:	04090593          	addi	a1,s2,64
    800017b4:	00048513          	mv	a0,s1
    800017b8:	00000097          	auipc	ra,0x0
    800017bc:	e30080e7          	jalr	-464(ra) # 800015e8 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    800017c0:	01813083          	ld	ra,24(sp)
    800017c4:	01013403          	ld	s0,16(sp)
    800017c8:	00813483          	ld	s1,8(sp)
    800017cc:	00013903          	ld	s2,0(sp)
    800017d0:	02010113          	addi	sp,sp,32
    800017d4:	00008067          	ret

00000000800017d8 <_Z12allocateSlabP12kmem_cache_s>:

void allocateSlab(kmem_cache_t* cachep)
{
    800017d8:	fd010113          	addi	sp,sp,-48
    800017dc:	02113423          	sd	ra,40(sp)
    800017e0:	02813023          	sd	s0,32(sp)
    800017e4:	00913c23          	sd	s1,24(sp)
    800017e8:	01213823          	sd	s2,16(sp)
    800017ec:	01313423          	sd	s3,8(sp)
    800017f0:	03010413          	addi	s0,sp,48
    800017f4:	00050993          	mv	s3,a0
    slab_t* newSlab = (slab_t*)buddy_alloc(cachep->slab_size);
    800017f8:	05853503          	ld	a0,88(a0)
    800017fc:	00001097          	auipc	ra,0x1
    80001800:	360080e7          	jalr	864(ra) # 80002b5c <_Z11buddy_allocm>
    if(newSlab == nullptr)
    80001804:	08050c63          	beqz	a0,8000189c <_Z12allocateSlabP12kmem_cache_s+0xc4>
    80001808:	00050493          	mv	s1,a0
        return;
    newSlab->next = cachep->slabs_empty;
    8000180c:	0409b783          	ld	a5,64(s3)
    80001810:	00f53423          	sd	a5,8(a0)
    if(cachep->slabs_empty != nullptr)
    80001814:	00078463          	beqz	a5,8000181c <_Z12allocateSlabP12kmem_cache_s+0x44>
        cachep->slabs_empty->prev = newSlab;
    80001818:	00a7b023          	sd	a0,0(a5)
    cachep->slabs_empty = newSlab;
    8000181c:	0499b023          	sd	s1,64(s3)
    newSlab->prev = nullptr;
    80001820:	0004b023          	sd	zero,0(s1)

    newSlab->numOfAllocatedObjects = 0;
    80001824:	0204b023          	sd	zero,32(s1)
    newSlab->owner = cachep;
    80001828:	0134b823          	sd	s3,16(s1)
    size_t sizeInBytes = cachep->slab_size*BLOCK_SIZE;
    8000182c:	0589b683          	ld	a3,88(s3)
    80001830:	00c69693          	slli	a3,a3,0xc
    newSlab->numOfObjects = (sizeInBytes - sizeof(slab_t)) / cachep->obj_size; // TODO can this param be in cache ?
    80001834:	dd868693          	addi	a3,a3,-552
    80001838:	0609b783          	ld	a5,96(s3)
    8000183c:	02f6d6b3          	divu	a3,a3,a5
    80001840:	00d4bc23          	sd	a3,24(s1)
    for(size_t i = 0; i < (newSlab->numOfObjects + 7) / 8;i++)
    80001844:	00000713          	li	a4,0
    80001848:	00768793          	addi	a5,a3,7
    8000184c:	0037d793          	srli	a5,a5,0x3
    80001850:	00f77a63          	bgeu	a4,a5,80001864 <_Z12allocateSlabP12kmem_cache_s+0x8c>
        newSlab->allocated[i] = 0;
    80001854:	00e487b3          	add	a5,s1,a4
    80001858:	02078423          	sb	zero,40(a5)
    for(size_t i = 0; i < (newSlab->numOfObjects + 7) / 8;i++)
    8000185c:	00170713          	addi	a4,a4,1
    80001860:	fe9ff06f          	j	80001848 <_Z12allocateSlabP12kmem_cache_s+0x70>

    if(cachep->ctor != nullptr)
    80001864:	0689b783          	ld	a5,104(s3)
    80001868:	02078a63          	beqz	a5,8000189c <_Z12allocateSlabP12kmem_cache_s+0xc4>
    {
        for(size_t i = 0;i < newSlab->numOfObjects;i++)
    8000186c:	00000913          	li	s2,0
    80001870:	0184b783          	ld	a5,24(s1)
    80001874:	02f97463          	bgeu	s2,a5,8000189c <_Z12allocateSlabP12kmem_cache_s+0xc4>
            cachep->ctor((void*)((size_t)newSlab + sizeof(slab_t) + i*newSlab->owner->obj_size));
    80001878:	0689b783          	ld	a5,104(s3)
    8000187c:	0104b703          	ld	a4,16(s1)
    80001880:	06073503          	ld	a0,96(a4)
    80001884:	03250533          	mul	a0,a0,s2
    80001888:	00a48533          	add	a0,s1,a0
    8000188c:	22850513          	addi	a0,a0,552
    80001890:	000780e7          	jalr	a5
        for(size_t i = 0;i < newSlab->numOfObjects;i++)
    80001894:	00190913          	addi	s2,s2,1
    80001898:	fd9ff06f          	j	80001870 <_Z12allocateSlabP12kmem_cache_s+0x98>
    }
}
    8000189c:	02813083          	ld	ra,40(sp)
    800018a0:	02013403          	ld	s0,32(sp)
    800018a4:	01813483          	ld	s1,24(sp)
    800018a8:	01013903          	ld	s2,16(sp)
    800018ac:	00813983          	ld	s3,8(sp)
    800018b0:	03010113          	addi	sp,sp,48
    800018b4:	00008067          	ret

00000000800018b8 <_Z18getOptimalSlabSizem>:

size_t getOptimalSlabSize(size_t obj_size)
{
    800018b8:	ff010113          	addi	sp,sp,-16
    800018bc:	00813423          	sd	s0,8(sp)
    800018c0:	01010413          	addi	s0,sp,16
    size_t bestSize = BLOCK_SIZE;
    800018c4:	000017b7          	lui	a5,0x1
    while(bestSize < obj_size + sizeof(slab_t))
    800018c8:	22850713          	addi	a4,a0,552
    800018cc:	00e7f663          	bgeu	a5,a4,800018d8 <_Z18getOptimalSlabSizem+0x20>
        bestSize<<=1;
    800018d0:	00179793          	slli	a5,a5,0x1
    while(bestSize < obj_size + sizeof(slab_t))
    800018d4:	ff5ff06f          	j	800018c8 <_Z18getOptimalSlabSizem+0x10>
    size_t optimalWaste = (bestSize - sizeof(slab_t)) % obj_size;
    800018d8:	dd878593          	addi	a1,a5,-552 # dd8 <_entry-0x7ffff228>
    800018dc:	02a5f5b3          	remu	a1,a1,a0
    800018e0:	00078313          	mv	t1,a5
    size_t oldSize = bestSize;

    static size_t lowerConst = 1;
    static size_t highConst = 4;
    for(size_t i = lowerConst;i<=highConst;i++)
    800018e4:	00100693          	li	a3,1
    800018e8:	0080006f          	j	800018f0 <_Z18getOptimalSlabSizem+0x38>
    800018ec:	00168693          	addi	a3,a3,1
    800018f0:	00400713          	li	a4,4
    800018f4:	02d76663          	bltu	a4,a3,80001920 <_Z18getOptimalSlabSizem+0x68>
    {
        size_t newSize = oldSize << i;
    800018f8:	00d79633          	sll	a2,a5,a3
        size_t newWaste = (newSize - sizeof(slab_t)) % obj_size;
    800018fc:	dd860713          	addi	a4,a2,-552
    80001900:	02a77833          	remu	a6,a4,a0
        size_t numOfObjs = (newSize - sizeof(slab_t)) / obj_size;
    80001904:	02a75733          	divu	a4,a4,a0
        if(newWaste < optimalWaste && numOfObjs <= MAX_NUM_OF_OBJS)
    80001908:	feb872e3          	bgeu	a6,a1,800018ec <_Z18getOptimalSlabSizem+0x34>
    8000190c:	000018b7          	lui	a7,0x1
    80001910:	fce8eee3          	bltu	a7,a4,800018ec <_Z18getOptimalSlabSizem+0x34>
        {
            optimalWaste = newWaste;
    80001914:	00080593          	mv	a1,a6
            bestSize = newSize;
    80001918:	00060313          	mv	t1,a2
    8000191c:	fd1ff06f          	j	800018ec <_Z18getOptimalSlabSizem+0x34>
        }
    }
    for(size_t i = lowerConst;i<=highConst;i++)
    80001920:	00100613          	li	a2,1
    80001924:	0080006f          	j	8000192c <_Z18getOptimalSlabSizem+0x74>
    80001928:	00160613          	addi	a2,a2,1
    8000192c:	00400713          	li	a4,4
    80001930:	02c76863          	bltu	a4,a2,80001960 <_Z18getOptimalSlabSizem+0xa8>
    {
        size_t newSize = oldSize + i*BLOCK_SIZE;
    80001934:	00c61693          	slli	a3,a2,0xc
    80001938:	00f686b3          	add	a3,a3,a5
        size_t newWaste = (newSize - sizeof(slab_t)) % obj_size;
    8000193c:	dd868713          	addi	a4,a3,-552
    80001940:	02a77833          	remu	a6,a4,a0
        size_t numOfObjs = (newSize - sizeof(slab_t)) / obj_size;
    80001944:	02a75733          	divu	a4,a4,a0
        if(newWaste < optimalWaste && numOfObjs <= MAX_NUM_OF_OBJS)
    80001948:	feb870e3          	bgeu	a6,a1,80001928 <_Z18getOptimalSlabSizem+0x70>
    8000194c:	000018b7          	lui	a7,0x1
    80001950:	fce8ece3          	bltu	a7,a4,80001928 <_Z18getOptimalSlabSizem+0x70>
        {
            optimalWaste = newWaste;
    80001954:	00080593          	mv	a1,a6
            bestSize = newSize;
    80001958:	00068313          	mv	t1,a3
    8000195c:	fcdff06f          	j	80001928 <_Z18getOptimalSlabSizem+0x70>
        }
    }

    return bestSize / BLOCK_SIZE;
}
    80001960:	00c35513          	srli	a0,t1,0xc
    80001964:	00813403          	ld	s0,8(sp)
    80001968:	01010113          	addi	sp,sp,16
    8000196c:	00008067          	ret

0000000080001970 <_Z8findSlabP12kmem_cache_sPKv>:

//finds the slab where objp is
slab_t* findSlab(kmem_cache_t* cachep, const void* objp)
{
    80001970:	ff010113          	addi	sp,sp,-16
    80001974:	00813423          	sd	s0,8(sp)
    80001978:	01010413          	addi	s0,sp,16
    8000197c:	00050693          	mv	a3,a0
    if(cachep == nullptr || objp == nullptr)
    80001980:	02050c63          	beqz	a0,800019b8 <_Z8findSlabP12kmem_cache_sPKv+0x48>
    80001984:	06058a63          	beqz	a1,800019f8 <_Z8findSlabP12kmem_cache_sPKv+0x88>
        return nullptr;
    slab_t* slab = cachep->slabs_full;
    80001988:	04853503          	ld	a0,72(a0)
    8000198c:	0080006f          	j	80001994 <_Z8findSlabP12kmem_cache_sPKv+0x24>
    while(slab != nullptr)
    {
        size_t endAddr = (size_t)slab + sizeof(slab_t) + slab->numOfObjects*slab->owner->obj_size;
        if((size_t)objp > (size_t)slab && (size_t)objp < endAddr)
            return slab;
        slab = slab->next;
    80001990:	00853503          	ld	a0,8(a0)
    while(slab != nullptr)
    80001994:	02050863          	beqz	a0,800019c4 <_Z8findSlabP12kmem_cache_sPKv+0x54>
        size_t endAddr = (size_t)slab + sizeof(slab_t) + slab->numOfObjects*slab->owner->obj_size;
    80001998:	01853783          	ld	a5,24(a0)
    8000199c:	01053703          	ld	a4,16(a0)
    800019a0:	06073703          	ld	a4,96(a4)
    800019a4:	02e787b3          	mul	a5,a5,a4
    800019a8:	00a787b3          	add	a5,a5,a0
    800019ac:	22878793          	addi	a5,a5,552
        if((size_t)objp > (size_t)slab && (size_t)objp < endAddr)
    800019b0:	feb570e3          	bgeu	a0,a1,80001990 <_Z8findSlabP12kmem_cache_sPKv+0x20>
    800019b4:	fcf5fee3          	bgeu	a1,a5,80001990 <_Z8findSlabP12kmem_cache_sPKv+0x20>
            return slab;
        slab = slab->next;
    }

    return nullptr;
}
    800019b8:	00813403          	ld	s0,8(sp)
    800019bc:	01010113          	addi	sp,sp,16
    800019c0:	00008067          	ret
    slab = cachep->slabs_partial;
    800019c4:	0506b503          	ld	a0,80(a3)
    800019c8:	0080006f          	j	800019d0 <_Z8findSlabP12kmem_cache_sPKv+0x60>
        slab = slab->next;
    800019cc:	00853503          	ld	a0,8(a0)
    while(slab != nullptr)
    800019d0:	fe0504e3          	beqz	a0,800019b8 <_Z8findSlabP12kmem_cache_sPKv+0x48>
        size_t endAddr = (size_t)slab + sizeof(slab_t) + slab->numOfObjects*slab->owner->obj_size;
    800019d4:	01853783          	ld	a5,24(a0)
    800019d8:	01053703          	ld	a4,16(a0)
    800019dc:	06073703          	ld	a4,96(a4)
    800019e0:	02e787b3          	mul	a5,a5,a4
    800019e4:	00a787b3          	add	a5,a5,a0
    800019e8:	22878793          	addi	a5,a5,552
        if((size_t)objp > (size_t)slab && (size_t)objp < endAddr)
    800019ec:	feb570e3          	bgeu	a0,a1,800019cc <_Z8findSlabP12kmem_cache_sPKv+0x5c>
    800019f0:	fcf5fee3          	bgeu	a1,a5,800019cc <_Z8findSlabP12kmem_cache_sPKv+0x5c>
    800019f4:	fc5ff06f          	j	800019b8 <_Z8findSlabP12kmem_cache_sPKv+0x48>
        return nullptr;
    800019f8:	00058513          	mv	a0,a1
    800019fc:	fbdff06f          	j	800019b8 <_Z8findSlabP12kmem_cache_sPKv+0x48>

0000000080001a00 <_Z19resetAllocatedIndexP6slab_si>:

void resetAllocatedIndex(slab_t* slab, int index)
{
    80001a00:	ff010113          	addi	sp,sp,-16
    80001a04:	00813423          	sd	s0,8(sp)
    80001a08:	01010413          	addi	s0,sp,16
    slab->allocated[index / 8]=(uint8)slab->allocated[index/8] & ~(1 << (index%8));
    80001a0c:	41f5d79b          	sraiw	a5,a1,0x1f
    80001a10:	01d7d79b          	srliw	a5,a5,0x1d
    80001a14:	00b785bb          	addw	a1,a5,a1
    80001a18:	4035d71b          	sraiw	a4,a1,0x3
    80001a1c:	00e50533          	add	a0,a0,a4
    80001a20:	02850703          	lb	a4,40(a0)
    80001a24:	0075f593          	andi	a1,a1,7
    80001a28:	40f585bb          	subw	a1,a1,a5
    80001a2c:	00100793          	li	a5,1
    80001a30:	00b795bb          	sllw	a1,a5,a1
    80001a34:	fff5c593          	not	a1,a1
    80001a38:	00b775b3          	and	a1,a4,a1
    80001a3c:	02b50423          	sb	a1,40(a0)
}
    80001a40:	00813403          	ld	s0,8(sp)
    80001a44:	01010113          	addi	sp,sp,16
    80001a48:	00008067          	ret

0000000080001a4c <_Z13printSlabInfoP6slab_s>:

void printSlabInfo(slab_t* slab)
{
    80001a4c:	fe010113          	addi	sp,sp,-32
    80001a50:	00113c23          	sd	ra,24(sp)
    80001a54:	00813823          	sd	s0,16(sp)
    80001a58:	00913423          	sd	s1,8(sp)
    80001a5c:	02010413          	addi	s0,sp,32
    80001a60:	00050493          	mv	s1,a0
    KConsole::trapPrintString("One slab info---------\n");
    80001a64:	00006517          	auipc	a0,0x6
    80001a68:	5cc50513          	addi	a0,a0,1484 # 80008030 <CONSOLE_STATUS+0x20>
    80001a6c:	00002097          	auipc	ra,0x2
    80001a70:	a58080e7          	jalr	-1448(ra) # 800034c4 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintStringInt("Slab address ",(size_t)slab,16);
    80001a74:	01000613          	li	a2,16
    80001a78:	00048593          	mv	a1,s1
    80001a7c:	00006517          	auipc	a0,0x6
    80001a80:	5cc50513          	addi	a0,a0,1484 # 80008048 <CONSOLE_STATUS+0x38>
    80001a84:	00002097          	auipc	ra,0x2
    80001a88:	b18080e7          	jalr	-1256(ra) # 8000359c <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Number of allocated objects ",slab->numOfAllocatedObjects);
    80001a8c:	00a00613          	li	a2,10
    80001a90:	0204b583          	ld	a1,32(s1)
    80001a94:	00006517          	auipc	a0,0x6
    80001a98:	5c450513          	addi	a0,a0,1476 # 80008058 <CONSOLE_STATUS+0x48>
    80001a9c:	00002097          	auipc	ra,0x2
    80001aa0:	b00080e7          	jalr	-1280(ra) # 8000359c <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Number of objects ", slab->numOfObjects);
    80001aa4:	00a00613          	li	a2,10
    80001aa8:	0184b583          	ld	a1,24(s1)
    80001aac:	00006517          	auipc	a0,0x6
    80001ab0:	5cc50513          	addi	a0,a0,1484 # 80008078 <CONSOLE_STATUS+0x68>
    80001ab4:	00002097          	auipc	ra,0x2
    80001ab8:	ae8080e7          	jalr	-1304(ra) # 8000359c <_ZN8KConsole18trapPrintStringIntEPKcmi>
        KConsole::trapPrintInt(i);
        KConsole::trapPrintString(" : ");
        KConsole::trapPrintInt((size_t)slab->allocated[i], 16);
        KConsole::trapPrintString("\n");
    }*/
}
    80001abc:	01813083          	ld	ra,24(sp)
    80001ac0:	01013403          	ld	s0,16(sp)
    80001ac4:	00813483          	ld	s1,8(sp)
    80001ac8:	02010113          	addi	sp,sp,32
    80001acc:	00008067          	ret

0000000080001ad0 <_Z16free_slab_objectP6slab_sPKv>:

void free_slab_object(slab_t* slab, const void* objp)
{
    if(slab == nullptr || objp == nullptr)
    80001ad0:	12050a63          	beqz	a0,80001c04 <_Z16free_slab_objectP6slab_sPKv+0x134>
{
    80001ad4:	fd010113          	addi	sp,sp,-48
    80001ad8:	02113423          	sd	ra,40(sp)
    80001adc:	02813023          	sd	s0,32(sp)
    80001ae0:	00913c23          	sd	s1,24(sp)
    80001ae4:	01213823          	sd	s2,16(sp)
    80001ae8:	01313423          	sd	s3,8(sp)
    80001aec:	01413023          	sd	s4,0(sp)
    80001af0:	03010413          	addi	s0,sp,48
    80001af4:	00050493          	mv	s1,a0
    80001af8:	00058993          	mv	s3,a1
    if(slab == nullptr || objp == nullptr)
    80001afc:	08058463          	beqz	a1,80001b84 <_Z16free_slab_objectP6slab_sPKv+0xb4>
        return;
    int indexOfObject = ((size_t)objp - sizeof(slab_t) - (size_t)slab) / slab->owner->obj_size;
    80001b00:	40a58933          	sub	s2,a1,a0
    80001b04:	dd890913          	addi	s2,s2,-552
    80001b08:	01053a03          	ld	s4,16(a0)
    80001b0c:	060a3783          	ld	a5,96(s4)
    80001b10:	02f95933          	divu	s2,s2,a5
    80001b14:	0009091b          	sext.w	s2,s2
    if((size_t)objp != (size_t)slab + sizeof(slab_t) + indexOfObject*slab->owner->obj_size) //address not allocated, random address
    80001b18:	032787b3          	mul	a5,a5,s2
    80001b1c:	00f507b3          	add	a5,a0,a5
    80001b20:	22878793          	addi	a5,a5,552
    80001b24:	06f59063          	bne	a1,a5,80001b84 <_Z16free_slab_objectP6slab_sPKv+0xb4>
        return;

    if(!checkSetIndex(slab, indexOfObject))
    80001b28:	00090593          	mv	a1,s2
    80001b2c:	00000097          	auipc	ra,0x0
    80001b30:	934080e7          	jalr	-1740(ra) # 80001460 <_Z13checkSetIndexP6slab_si>
    80001b34:	04050863          	beqz	a0,80001b84 <_Z16free_slab_objectP6slab_sPKv+0xb4>
        return;

    kmem_cache_t* cachep = slab->owner;
    if(cachep->dtor != nullptr)
    80001b38:	070a3783          	ld	a5,112(s4)
    80001b3c:	00078663          	beqz	a5,80001b48 <_Z16free_slab_objectP6slab_sPKv+0x78>
        cachep->dtor((void*)objp);
    80001b40:	00098513          	mv	a0,s3
    80001b44:	000780e7          	jalr	a5
    if(cachep->ctor != nullptr)
    80001b48:	068a3783          	ld	a5,104(s4)
    80001b4c:	00078663          	beqz	a5,80001b58 <_Z16free_slab_objectP6slab_sPKv+0x88>
        cachep->ctor((void*)objp);
    80001b50:	00098513          	mv	a0,s3
    80001b54:	000780e7          	jalr	a5

    resetAllocatedIndex(slab, indexOfObject);
    80001b58:	00090593          	mv	a1,s2
    80001b5c:	00048513          	mv	a0,s1
    80001b60:	00000097          	auipc	ra,0x0
    80001b64:	ea0080e7          	jalr	-352(ra) # 80001a00 <_Z19resetAllocatedIndexP6slab_si>
    if(slab->numOfObjects == slab->numOfAllocatedObjects)
    80001b68:	0184b703          	ld	a4,24(s1)
    80001b6c:	0204b783          	ld	a5,32(s1)
    80001b70:	02f70a63          	beq	a4,a5,80001ba4 <_Z16free_slab_objectP6slab_sPKv+0xd4>
        removeFullSlab(slab->owner, slab);
        slab->numOfAllocatedObjects--;
        if(empty(slab))
            removePartialSlab(slab->owner, slab);
    }
    else if(slab->numOfAllocatedObjects == 1)
    80001b74:	00100713          	li	a4,1
    80001b78:	06e78663          	beq	a5,a4,80001be4 <_Z16free_slab_objectP6slab_sPKv+0x114>
    {
        removePartialSlab(slab->owner, slab);
        slab->numOfAllocatedObjects--;
    }
    else
        slab->numOfAllocatedObjects--;
    80001b7c:	fff78793          	addi	a5,a5,-1
    80001b80:	02f4b023          	sd	a5,32(s1)
}
    80001b84:	02813083          	ld	ra,40(sp)
    80001b88:	02013403          	ld	s0,32(sp)
    80001b8c:	01813483          	ld	s1,24(sp)
    80001b90:	01013903          	ld	s2,16(sp)
    80001b94:	00813983          	ld	s3,8(sp)
    80001b98:	00013a03          	ld	s4,0(sp)
    80001b9c:	03010113          	addi	sp,sp,48
    80001ba0:	00008067          	ret
        removeFullSlab(slab->owner, slab);
    80001ba4:	00048593          	mv	a1,s1
    80001ba8:	0104b503          	ld	a0,16(s1)
    80001bac:	00000097          	auipc	ra,0x0
    80001bb0:	b7c080e7          	jalr	-1156(ra) # 80001728 <_Z14removeFullSlabP12kmem_cache_sP6slab_s>
        slab->numOfAllocatedObjects--;
    80001bb4:	0204b783          	ld	a5,32(s1)
    80001bb8:	fff78793          	addi	a5,a5,-1
    80001bbc:	02f4b023          	sd	a5,32(s1)
        if(empty(slab))
    80001bc0:	00048513          	mv	a0,s1
    80001bc4:	00000097          	auipc	ra,0x0
    80001bc8:	a04080e7          	jalr	-1532(ra) # 800015c8 <_Z5emptyP6slab_s>
    80001bcc:	fa050ce3          	beqz	a0,80001b84 <_Z16free_slab_objectP6slab_sPKv+0xb4>
            removePartialSlab(slab->owner, slab);
    80001bd0:	00048593          	mv	a1,s1
    80001bd4:	0104b503          	ld	a0,16(s1)
    80001bd8:	00000097          	auipc	ra,0x0
    80001bdc:	ba8080e7          	jalr	-1112(ra) # 80001780 <_Z17removePartialSlabP12kmem_cache_sP6slab_s>
    80001be0:	fa5ff06f          	j	80001b84 <_Z16free_slab_objectP6slab_sPKv+0xb4>
        removePartialSlab(slab->owner, slab);
    80001be4:	00048593          	mv	a1,s1
    80001be8:	0104b503          	ld	a0,16(s1)
    80001bec:	00000097          	auipc	ra,0x0
    80001bf0:	b94080e7          	jalr	-1132(ra) # 80001780 <_Z17removePartialSlabP12kmem_cache_sP6slab_s>
        slab->numOfAllocatedObjects--;
    80001bf4:	0204b783          	ld	a5,32(s1)
    80001bf8:	fff78793          	addi	a5,a5,-1
    80001bfc:	02f4b023          	sd	a5,32(s1)
    80001c00:	f85ff06f          	j	80001b84 <_Z16free_slab_objectP6slab_sPKv+0xb4>
    80001c04:	00008067          	ret

0000000080001c08 <_Z9kmem_initPvi>:
    printBuddyInfo();
}

//slab allocator public interface-----------------------------------------------------------------------------
void kmem_init(void *space, int block_num)
{
    80001c08:	ff010113          	addi	sp,sp,-16
    80001c0c:	00113423          	sd	ra,8(sp)
    80001c10:	00813023          	sd	s0,0(sp)
    80001c14:	01010413          	addi	s0,sp,16
    buddyAllocator* buddy = buddy_init(space, block_num);
    80001c18:	00001097          	auipc	ra,0x1
    80001c1c:	144080e7          	jalr	324(ra) # 80002d5c <_Z10buddy_initPvm>
    slabAllocator = slab_allocator_init(buddy);
    80001c20:	fffff097          	auipc	ra,0xfffff
    80001c24:	7cc080e7          	jalr	1996(ra) # 800013ec <_Z19slab_allocator_initP14buddyAllocator>
    80001c28:	00007797          	auipc	a5,0x7
    80001c2c:	d6a7bc23          	sd	a0,-648(a5) # 800089a0 <_ZL13slabAllocator>
}
    80001c30:	00813083          	ld	ra,8(sp)
    80001c34:	00013403          	ld	s0,0(sp)
    80001c38:	01010113          	addi	sp,sp,16
    80001c3c:	00008067          	ret

0000000080001c40 <_Z16kmem_cache_allocP12kmem_cache_s>:
    init_cache(newCache, name, getOptimalSlabSize(size), size, ctor,dtor);
    return newCache;
}

void *kmem_cache_alloc(kmem_cache_t *cachep)
{
    80001c40:	fe010113          	addi	sp,sp,-32
    80001c44:	00113c23          	sd	ra,24(sp)
    80001c48:	00813823          	sd	s0,16(sp)
    80001c4c:	00913423          	sd	s1,8(sp)
    80001c50:	01213023          	sd	s2,0(sp)
    80001c54:	02010413          	addi	s0,sp,32
    80001c58:	00050493          	mv	s1,a0
    if(cachep == nullptr)
    80001c5c:	10050a63          	beqz	a0,80001d70 <_Z16kmem_cache_allocP12kmem_cache_s+0x130>
        return nullptr;

    if(cachep->slabs_partial != nullptr)
    80001c60:	05053503          	ld	a0,80(a0)
    80001c64:	04051a63          	bnez	a0,80001cb8 <_Z16kmem_cache_allocP12kmem_cache_s+0x78>
        void* allocatedAddr = allocateObject(cachep->slabs_partial);
        if(full(cachep->slabs_partial))
            putPartialToFull(cachep);
        return allocatedAddr;
    }
    else if(cachep->slabs_empty != nullptr)
    80001c68:	0404b503          	ld	a0,64(s1)
    80001c6c:	08050a63          	beqz	a0,80001d00 <_Z16kmem_cache_allocP12kmem_cache_s+0xc0>
    {
        void* allocatedAddr = allocateObject(cachep->slabs_empty);
    80001c70:	00000097          	auipc	ra,0x0
    80001c74:	878080e7          	jalr	-1928(ra) # 800014e8 <_Z14allocateObjectP6slab_s>
    80001c78:	00050913          	mv	s2,a0
        if(!empty(cachep->slabs_empty))
    80001c7c:	0404b503          	ld	a0,64(s1)
    80001c80:	00000097          	auipc	ra,0x0
    80001c84:	948080e7          	jalr	-1720(ra) # 800015c8 <_Z5emptyP6slab_s>
    80001c88:	04051663          	bnez	a0,80001cd4 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
        {
            putEmptyToPartial(cachep);
    80001c8c:	00048513          	mv	a0,s1
    80001c90:	00000097          	auipc	ra,0x0
    80001c94:	a40080e7          	jalr	-1472(ra) # 800016d0 <_Z17putEmptyToPartialP12kmem_cache_s>
            if(full(cachep->slabs_partial))
    80001c98:	0504b503          	ld	a0,80(s1)
    80001c9c:	00000097          	auipc	ra,0x0
    80001ca0:	904080e7          	jalr	-1788(ra) # 800015a0 <_Z4fullP6slab_s>
    80001ca4:	02050863          	beqz	a0,80001cd4 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
                putPartialToFull(cachep);
    80001ca8:	00048513          	mv	a0,s1
    80001cac:	00000097          	auipc	ra,0x0
    80001cb0:	9cc080e7          	jalr	-1588(ra) # 80001678 <_Z16putPartialToFullP12kmem_cache_s>
        }
        return allocatedAddr;
    80001cb4:	0200006f          	j	80001cd4 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
        void* allocatedAddr = allocateObject(cachep->slabs_partial);
    80001cb8:	00000097          	auipc	ra,0x0
    80001cbc:	830080e7          	jalr	-2000(ra) # 800014e8 <_Z14allocateObjectP6slab_s>
    80001cc0:	00050913          	mv	s2,a0
        if(full(cachep->slabs_partial))
    80001cc4:	0504b503          	ld	a0,80(s1)
    80001cc8:	00000097          	auipc	ra,0x0
    80001ccc:	8d8080e7          	jalr	-1832(ra) # 800015a0 <_Z4fullP6slab_s>
    80001cd0:	02051063          	bnez	a0,80001cf0 <_Z16kmem_cache_allocP12kmem_cache_s+0xb0>
                putPartialToFull(cachep);
        }
        return allocatedAddr;
    }
    return nullptr;
}
    80001cd4:	00090513          	mv	a0,s2
    80001cd8:	01813083          	ld	ra,24(sp)
    80001cdc:	01013403          	ld	s0,16(sp)
    80001ce0:	00813483          	ld	s1,8(sp)
    80001ce4:	00013903          	ld	s2,0(sp)
    80001ce8:	02010113          	addi	sp,sp,32
    80001cec:	00008067          	ret
            putPartialToFull(cachep);
    80001cf0:	00048513          	mv	a0,s1
    80001cf4:	00000097          	auipc	ra,0x0
    80001cf8:	984080e7          	jalr	-1660(ra) # 80001678 <_Z16putPartialToFullP12kmem_cache_s>
        return allocatedAddr;
    80001cfc:	fd9ff06f          	j	80001cd4 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
        allocateSlab(cachep);
    80001d00:	00048513          	mv	a0,s1
    80001d04:	00000097          	auipc	ra,0x0
    80001d08:	ad4080e7          	jalr	-1324(ra) # 800017d8 <_Z12allocateSlabP12kmem_cache_s>
        if(cachep->slabs_empty == nullptr)
    80001d0c:	0404b903          	ld	s2,64(s1)
    80001d10:	04090863          	beqz	s2,80001d60 <_Z16kmem_cache_allocP12kmem_cache_s+0x120>
        void* allocatedAddr = allocateObject(cachep->slabs_empty);
    80001d14:	00090513          	mv	a0,s2
    80001d18:	fffff097          	auipc	ra,0xfffff
    80001d1c:	7d0080e7          	jalr	2000(ra) # 800014e8 <_Z14allocateObjectP6slab_s>
    80001d20:	00050913          	mv	s2,a0
        if(!empty(cachep->slabs_empty))
    80001d24:	0404b503          	ld	a0,64(s1)
    80001d28:	00000097          	auipc	ra,0x0
    80001d2c:	8a0080e7          	jalr	-1888(ra) # 800015c8 <_Z5emptyP6slab_s>
    80001d30:	fa0512e3          	bnez	a0,80001cd4 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
            putEmptyToPartial(cachep);
    80001d34:	00048513          	mv	a0,s1
    80001d38:	00000097          	auipc	ra,0x0
    80001d3c:	998080e7          	jalr	-1640(ra) # 800016d0 <_Z17putEmptyToPartialP12kmem_cache_s>
            if(full(cachep->slabs_partial))
    80001d40:	0504b503          	ld	a0,80(s1)
    80001d44:	00000097          	auipc	ra,0x0
    80001d48:	85c080e7          	jalr	-1956(ra) # 800015a0 <_Z4fullP6slab_s>
    80001d4c:	f80504e3          	beqz	a0,80001cd4 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
                putPartialToFull(cachep);
    80001d50:	00048513          	mv	a0,s1
    80001d54:	00000097          	auipc	ra,0x0
    80001d58:	924080e7          	jalr	-1756(ra) # 80001678 <_Z16putPartialToFullP12kmem_cache_s>
        return allocatedAddr;
    80001d5c:	f79ff06f          	j	80001cd4 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
            cachep->errors|=EXPAND_ERROR;
    80001d60:	0784a783          	lw	a5,120(s1)
    80001d64:	0017e793          	ori	a5,a5,1
    80001d68:	06f4ac23          	sw	a5,120(s1)
            return nullptr;
    80001d6c:	f69ff06f          	j	80001cd4 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
        return nullptr;
    80001d70:	00050913          	mv	s2,a0
    80001d74:	f61ff06f          	j	80001cd4 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>

0000000080001d78 <_Z17kmem_cache_createPKcmPFvPvES3_>:
{
    80001d78:	fc010113          	addi	sp,sp,-64
    80001d7c:	02113c23          	sd	ra,56(sp)
    80001d80:	02813823          	sd	s0,48(sp)
    80001d84:	02913423          	sd	s1,40(sp)
    80001d88:	03213023          	sd	s2,32(sp)
    80001d8c:	01313c23          	sd	s3,24(sp)
    80001d90:	01413823          	sd	s4,16(sp)
    80001d94:	01513423          	sd	s5,8(sp)
    80001d98:	04010413          	addi	s0,sp,64
    80001d9c:	00050993          	mv	s3,a0
    80001da0:	00058913          	mv	s2,a1
    80001da4:	00060a13          	mv	s4,a2
    80001da8:	00068a93          	mv	s5,a3
    kmem_cache_t* newCache = (kmem_cache_t*)kmem_cache_alloc(&slabAllocator->cacheOfCaches);
    80001dac:	00007517          	auipc	a0,0x7
    80001db0:	bf453503          	ld	a0,-1036(a0) # 800089a0 <_ZL13slabAllocator>
    80001db4:	06850513          	addi	a0,a0,104
    80001db8:	00000097          	auipc	ra,0x0
    80001dbc:	e88080e7          	jalr	-376(ra) # 80001c40 <_Z16kmem_cache_allocP12kmem_cache_s>
    80001dc0:	00050493          	mv	s1,a0
    if(newCache == nullptr)
    80001dc4:	02050863          	beqz	a0,80001df4 <_Z17kmem_cache_createPKcmPFvPvES3_+0x7c>
    init_cache(newCache, name, getOptimalSlabSize(size), size, ctor,dtor);
    80001dc8:	00090513          	mv	a0,s2
    80001dcc:	00000097          	auipc	ra,0x0
    80001dd0:	aec080e7          	jalr	-1300(ra) # 800018b8 <_Z18getOptimalSlabSizem>
    80001dd4:	00050613          	mv	a2,a0
    80001dd8:	000a8793          	mv	a5,s5
    80001ddc:	000a0713          	mv	a4,s4
    80001de0:	00090693          	mv	a3,s2
    80001de4:	00098593          	mv	a1,s3
    80001de8:	00048513          	mv	a0,s1
    80001dec:	fffff097          	auipc	ra,0xfffff
    80001df0:	574080e7          	jalr	1396(ra) # 80001360 <_Z10init_cacheP12kmem_cache_sPKcmmPFvPvES5_>
}
    80001df4:	00048513          	mv	a0,s1
    80001df8:	03813083          	ld	ra,56(sp)
    80001dfc:	03013403          	ld	s0,48(sp)
    80001e00:	02813483          	ld	s1,40(sp)
    80001e04:	02013903          	ld	s2,32(sp)
    80001e08:	01813983          	ld	s3,24(sp)
    80001e0c:	01013a03          	ld	s4,16(sp)
    80001e10:	00813a83          	ld	s5,8(sp)
    80001e14:	04010113          	addi	sp,sp,64
    80001e18:	00008067          	ret

0000000080001e1c <_Z15kmem_cache_freeP12kmem_cache_sPv>:

void kmem_cache_free(kmem_cache_t *cachep, void *objp)
{
    if(cachep == nullptr || objp == nullptr)
    80001e1c:	04050663          	beqz	a0,80001e68 <_Z15kmem_cache_freeP12kmem_cache_sPv+0x4c>
{
    80001e20:	fe010113          	addi	sp,sp,-32
    80001e24:	00113c23          	sd	ra,24(sp)
    80001e28:	00813823          	sd	s0,16(sp)
    80001e2c:	00913423          	sd	s1,8(sp)
    80001e30:	02010413          	addi	s0,sp,32
    80001e34:	00058493          	mv	s1,a1
    if(cachep == nullptr || objp == nullptr)
    80001e38:	00058e63          	beqz	a1,80001e54 <_Z15kmem_cache_freeP12kmem_cache_sPv+0x38>
        return;
    slab_t* slab = findSlab(cachep, objp);
    80001e3c:	00000097          	auipc	ra,0x0
    80001e40:	b34080e7          	jalr	-1228(ra) # 80001970 <_Z8findSlabP12kmem_cache_sPKv>
    if(slab == nullptr) return;
    80001e44:	00050863          	beqz	a0,80001e54 <_Z15kmem_cache_freeP12kmem_cache_sPv+0x38>

    free_slab_object(slab, objp);
    80001e48:	00048593          	mv	a1,s1
    80001e4c:	00000097          	auipc	ra,0x0
    80001e50:	c84080e7          	jalr	-892(ra) # 80001ad0 <_Z16free_slab_objectP6slab_sPKv>
}
    80001e54:	01813083          	ld	ra,24(sp)
    80001e58:	01013403          	ld	s0,16(sp)
    80001e5c:	00813483          	ld	s1,8(sp)
    80001e60:	02010113          	addi	sp,sp,32
    80001e64:	00008067          	ret
    80001e68:	00008067          	ret

0000000080001e6c <_Z15kmem_cache_infoP12kmem_cache_s>:

//TODO what needs to be printed
void kmem_cache_info(kmem_cache_t *cachep)
{
    if(cachep == nullptr)
    80001e6c:	14050c63          	beqz	a0,80001fc4 <_Z15kmem_cache_infoP12kmem_cache_s+0x158>
{
    80001e70:	fe010113          	addi	sp,sp,-32
    80001e74:	00113c23          	sd	ra,24(sp)
    80001e78:	00813823          	sd	s0,16(sp)
    80001e7c:	00913423          	sd	s1,8(sp)
    80001e80:	01213023          	sd	s2,0(sp)
    80001e84:	02010413          	addi	s0,sp,32
    80001e88:	00050913          	mv	s2,a0
        return;
    KConsole::trapPrintString("\n\n\n\n\n");
    80001e8c:	00006517          	auipc	a0,0x6
    80001e90:	20450513          	addi	a0,a0,516 # 80008090 <CONSOLE_STATUS+0x80>
    80001e94:	00001097          	auipc	ra,0x1
    80001e98:	630080e7          	jalr	1584(ra) # 800034c4 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Kmem Cache Info-------------------------------------\n");
    80001e9c:	00006517          	auipc	a0,0x6
    80001ea0:	1fc50513          	addi	a0,a0,508 # 80008098 <CONSOLE_STATUS+0x88>
    80001ea4:	00001097          	auipc	ra,0x1
    80001ea8:	620080e7          	jalr	1568(ra) # 800034c4 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Cache Name ");
    80001eac:	00006517          	auipc	a0,0x6
    80001eb0:	22450513          	addi	a0,a0,548 # 800080d0 <CONSOLE_STATUS+0xc0>
    80001eb4:	00001097          	auipc	ra,0x1
    80001eb8:	610080e7          	jalr	1552(ra) # 800034c4 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString(cachep->cacheName); KConsole::trapPrintString("\n");
    80001ebc:	00090513          	mv	a0,s2
    80001ec0:	00001097          	auipc	ra,0x1
    80001ec4:	604080e7          	jalr	1540(ra) # 800034c4 <_ZN8KConsole15trapPrintStringEPKc>
    80001ec8:	00006517          	auipc	a0,0x6
    80001ecc:	2b050513          	addi	a0,a0,688 # 80008178 <CONSOLE_STATUS+0x168>
    80001ed0:	00001097          	auipc	ra,0x1
    80001ed4:	5f4080e7          	jalr	1524(ra) # 800034c4 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintStringInt("Cache slab size in blocks ", cachep->slab_size);
    80001ed8:	00a00613          	li	a2,10
    80001edc:	05893583          	ld	a1,88(s2)
    80001ee0:	00006517          	auipc	a0,0x6
    80001ee4:	20050513          	addi	a0,a0,512 # 800080e0 <CONSOLE_STATUS+0xd0>
    80001ee8:	00001097          	auipc	ra,0x1
    80001eec:	6b4080e7          	jalr	1716(ra) # 8000359c <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Cache obj size in bytes ", cachep->obj_size);
    80001ef0:	00a00613          	li	a2,10
    80001ef4:	06093583          	ld	a1,96(s2)
    80001ef8:	00006517          	auipc	a0,0x6
    80001efc:	20850513          	addi	a0,a0,520 # 80008100 <CONSOLE_STATUS+0xf0>
    80001f00:	00001097          	auipc	ra,0x1
    80001f04:	69c080e7          	jalr	1692(ra) # 8000359c <_ZN8KConsole18trapPrintStringIntEPKcmi>
    
    KConsole::trapPrintString("Slabs info-------------------\n");
    80001f08:	00006517          	auipc	a0,0x6
    80001f0c:	21850513          	addi	a0,a0,536 # 80008120 <CONSOLE_STATUS+0x110>
    80001f10:	00001097          	auipc	ra,0x1
    80001f14:	5b4080e7          	jalr	1460(ra) # 800034c4 <_ZN8KConsole15trapPrintStringEPKc>

    KConsole::trapPrintString("Full slabs\n");
    80001f18:	00006517          	auipc	a0,0x6
    80001f1c:	22850513          	addi	a0,a0,552 # 80008140 <CONSOLE_STATUS+0x130>
    80001f20:	00001097          	auipc	ra,0x1
    80001f24:	5a4080e7          	jalr	1444(ra) # 800034c4 <_ZN8KConsole15trapPrintStringEPKc>
    slab_t* slab = cachep->slabs_full;
    80001f28:	04893483          	ld	s1,72(s2)
    while(slab != nullptr)
    80001f2c:	00048c63          	beqz	s1,80001f44 <_Z15kmem_cache_infoP12kmem_cache_s+0xd8>
    {
        printSlabInfo(slab);
    80001f30:	00048513          	mv	a0,s1
    80001f34:	00000097          	auipc	ra,0x0
    80001f38:	b18080e7          	jalr	-1256(ra) # 80001a4c <_Z13printSlabInfoP6slab_s>
        slab = slab->next;
    80001f3c:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    80001f40:	fedff06f          	j	80001f2c <_Z15kmem_cache_infoP12kmem_cache_s+0xc0>
    }

    KConsole::trapPrintString("Partial slabs\n");
    80001f44:	00006517          	auipc	a0,0x6
    80001f48:	20c50513          	addi	a0,a0,524 # 80008150 <CONSOLE_STATUS+0x140>
    80001f4c:	00001097          	auipc	ra,0x1
    80001f50:	578080e7          	jalr	1400(ra) # 800034c4 <_ZN8KConsole15trapPrintStringEPKc>
    slab = cachep->slabs_partial;
    80001f54:	05093483          	ld	s1,80(s2)
    while(slab != nullptr)
    80001f58:	00048c63          	beqz	s1,80001f70 <_Z15kmem_cache_infoP12kmem_cache_s+0x104>
    {
        printSlabInfo(slab);
    80001f5c:	00048513          	mv	a0,s1
    80001f60:	00000097          	auipc	ra,0x0
    80001f64:	aec080e7          	jalr	-1300(ra) # 80001a4c <_Z13printSlabInfoP6slab_s>
        slab = slab->next;
    80001f68:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    80001f6c:	fedff06f          	j	80001f58 <_Z15kmem_cache_infoP12kmem_cache_s+0xec>
    }

    KConsole::trapPrintString("Empty slabs\n");
    80001f70:	00006517          	auipc	a0,0x6
    80001f74:	1f050513          	addi	a0,a0,496 # 80008160 <CONSOLE_STATUS+0x150>
    80001f78:	00001097          	auipc	ra,0x1
    80001f7c:	54c080e7          	jalr	1356(ra) # 800034c4 <_ZN8KConsole15trapPrintStringEPKc>
    slab = cachep->slabs_empty;
    80001f80:	04093483          	ld	s1,64(s2)
    while(slab != nullptr)
    80001f84:	00048c63          	beqz	s1,80001f9c <_Z15kmem_cache_infoP12kmem_cache_s+0x130>
    {
        printSlabInfo(slab);
    80001f88:	00048513          	mv	a0,s1
    80001f8c:	00000097          	auipc	ra,0x0
    80001f90:	ac0080e7          	jalr	-1344(ra) # 80001a4c <_Z13printSlabInfoP6slab_s>
        slab = slab->next;
    80001f94:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    80001f98:	fedff06f          	j	80001f84 <_Z15kmem_cache_infoP12kmem_cache_s+0x118>
    }

    KConsole::trapPrintString("\n\n\n\n\n");
    80001f9c:	00006517          	auipc	a0,0x6
    80001fa0:	0f450513          	addi	a0,a0,244 # 80008090 <CONSOLE_STATUS+0x80>
    80001fa4:	00001097          	auipc	ra,0x1
    80001fa8:	520080e7          	jalr	1312(ra) # 800034c4 <_ZN8KConsole15trapPrintStringEPKc>
}
    80001fac:	01813083          	ld	ra,24(sp)
    80001fb0:	01013403          	ld	s0,16(sp)
    80001fb4:	00813483          	ld	s1,8(sp)
    80001fb8:	00013903          	ld	s2,0(sp)
    80001fbc:	02010113          	addi	sp,sp,32
    80001fc0:	00008067          	ret
    80001fc4:	00008067          	ret

0000000080001fc8 <_Z22printSlabAllocatorInfov>:
{
    80001fc8:	fe010113          	addi	sp,sp,-32
    80001fcc:	00113c23          	sd	ra,24(sp)
    80001fd0:	00813823          	sd	s0,16(sp)
    80001fd4:	00913423          	sd	s1,8(sp)
    80001fd8:	02010413          	addi	s0,sp,32
    KConsole::trapPrintString("\n\n\n\n\n\n\n\n\n");
    80001fdc:	00006517          	auipc	a0,0x6
    80001fe0:	19450513          	addi	a0,a0,404 # 80008170 <CONSOLE_STATUS+0x160>
    80001fe4:	00001097          	auipc	ra,0x1
    80001fe8:	4e0080e7          	jalr	1248(ra) # 800034c4 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Slab allocator info----------------------------------------------------------\n");
    80001fec:	00006517          	auipc	a0,0x6
    80001ff0:	19450513          	addi	a0,a0,404 # 80008180 <CONSOLE_STATUS+0x170>
    80001ff4:	00001097          	auipc	ra,0x1
    80001ff8:	4d0080e7          	jalr	1232(ra) # 800034c4 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintStringInt("Slab allocator address ", (size_t)slabAllocator, 16);
    80001ffc:	00007497          	auipc	s1,0x7
    80002000:	9a448493          	addi	s1,s1,-1628 # 800089a0 <_ZL13slabAllocator>
    80002004:	01000613          	li	a2,16
    80002008:	0004b583          	ld	a1,0(s1)
    8000200c:	00006517          	auipc	a0,0x6
    80002010:	1c450513          	addi	a0,a0,452 # 800081d0 <CONSOLE_STATUS+0x1c0>
    80002014:	00001097          	auipc	ra,0x1
    80002018:	588080e7          	jalr	1416(ra) # 8000359c <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintString("Cache of caches info\n");
    8000201c:	00006517          	auipc	a0,0x6
    80002020:	1cc50513          	addi	a0,a0,460 # 800081e8 <CONSOLE_STATUS+0x1d8>
    80002024:	00001097          	auipc	ra,0x1
    80002028:	4a0080e7          	jalr	1184(ra) # 800034c4 <_ZN8KConsole15trapPrintStringEPKc>
    kmem_cache_info(&slabAllocator->cacheOfCaches);
    8000202c:	0004b503          	ld	a0,0(s1)
    80002030:	06850513          	addi	a0,a0,104
    80002034:	00000097          	auipc	ra,0x0
    80002038:	e38080e7          	jalr	-456(ra) # 80001e6c <_Z15kmem_cache_infoP12kmem_cache_s>
    KConsole::trapPrintString("Caches for buffers\n");
    8000203c:	00006517          	auipc	a0,0x6
    80002040:	1c450513          	addi	a0,a0,452 # 80008200 <CONSOLE_STATUS+0x1f0>
    80002044:	00001097          	auipc	ra,0x1
    80002048:	480080e7          	jalr	1152(ra) # 800034c4 <_ZN8KConsole15trapPrintStringEPKc>
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    8000204c:	00000493          	li	s1,0
    80002050:	0100006f          	j	80002060 <_Z22printSlabAllocatorInfov+0x98>
            kmem_cache_info(slabAllocator->cachesBuffers[i]);
    80002054:	00000097          	auipc	ra,0x0
    80002058:	e18080e7          	jalr	-488(ra) # 80001e6c <_Z15kmem_cache_infoP12kmem_cache_s>
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    8000205c:	00148493          	addi	s1,s1,1
    80002060:	00c00793          	li	a5,12
    80002064:	0297e063          	bltu	a5,s1,80002084 <_Z22printSlabAllocatorInfov+0xbc>
        if(slabAllocator->cachesBuffers[i] != nullptr)
    80002068:	00349793          	slli	a5,s1,0x3
    8000206c:	00007717          	auipc	a4,0x7
    80002070:	93473703          	ld	a4,-1740(a4) # 800089a0 <_ZL13slabAllocator>
    80002074:	00f707b3          	add	a5,a4,a5
    80002078:	0007b503          	ld	a0,0(a5)
    8000207c:	fc051ce3          	bnez	a0,80002054 <_Z22printSlabAllocatorInfov+0x8c>
    80002080:	fddff06f          	j	8000205c <_Z22printSlabAllocatorInfov+0x94>
    KConsole::trapPrintString("\n\n\n\n\n\n\n\n\n");
    80002084:	00006517          	auipc	a0,0x6
    80002088:	0ec50513          	addi	a0,a0,236 # 80008170 <CONSOLE_STATUS+0x160>
    8000208c:	00001097          	auipc	ra,0x1
    80002090:	438080e7          	jalr	1080(ra) # 800034c4 <_ZN8KConsole15trapPrintStringEPKc>
    printBuddyInfo();
    80002094:	00001097          	auipc	ra,0x1
    80002098:	e2c080e7          	jalr	-468(ra) # 80002ec0 <_Z14printBuddyInfov>
}
    8000209c:	01813083          	ld	ra,24(sp)
    800020a0:	01013403          	ld	s0,16(sp)
    800020a4:	00813483          	ld	s1,8(sp)
    800020a8:	02010113          	addi	sp,sp,32
    800020ac:	00008067          	ret

00000000800020b0 <_Z7kmallocm>:

void *kmalloc(size_t size)
{
    800020b0:	fd010113          	addi	sp,sp,-48
    800020b4:	02113423          	sd	ra,40(sp)
    800020b8:	02813023          	sd	s0,32(sp)
    800020bc:	00913c23          	sd	s1,24(sp)
    800020c0:	01213823          	sd	s2,16(sp)
    800020c4:	01313423          	sd	s3,8(sp)
    800020c8:	03010413          	addi	s0,sp,48
    size_t level = getDeg2Ceil(size);
    800020cc:	00001097          	auipc	ra,0x1
    800020d0:	91c080e7          	jalr	-1764(ra) # 800029e8 <_Z11getDeg2Ceilm>
    if(level < CACHE_BUFFER_SMALL)
    800020d4:	00400793          	li	a5,4
    800020d8:	00a7fa63          	bgeu	a5,a0,800020ec <_Z7kmallocm+0x3c>
        level = CACHE_BUFFER_SMALL;
    if(level > CACHE_BUFFER_BIG)
    800020dc:	01100793          	li	a5,17
    800020e0:	00a7f863          	bgeu	a5,a0,800020f0 <_Z7kmallocm+0x40>
        return nullptr;
    800020e4:	00000913          	li	s2,0
    800020e8:	04c0006f          	j	80002134 <_Z7kmallocm+0x84>
        level = CACHE_BUFFER_SMALL;
    800020ec:	00500513          	li	a0,5
    size = (1 << level);
    800020f0:	00100693          	li	a3,1
    800020f4:	00a699bb          	sllw	s3,a3,a0
    size_t index = level - CACHE_BUFFER_SMALL;
    800020f8:	ffb50493          	addi	s1,a0,-5
    if(slabAllocator->cachesBuffers[index] == nullptr)
    800020fc:	00007917          	auipc	s2,0x7
    80002100:	8a493903          	ld	s2,-1884(s2) # 800089a0 <_ZL13slabAllocator>
    80002104:	00349793          	slli	a5,s1,0x3
    80002108:	00f907b3          	add	a5,s2,a5
    8000210c:	0007b783          	ld	a5,0(a5)
    80002110:	04078263          	beqz	a5,80002154 <_Z7kmallocm+0xa4>
        if(slabAllocator->cachesBuffers[index] == nullptr)
            return nullptr;
        init_cache(slabAllocator->cachesBuffers[index], "Cache for small buffers", getOptimalSlabSize(size), size, nullptr,nullptr);
    }

    return kmem_cache_alloc(slabAllocator->cachesBuffers[index]);
    80002114:	00349513          	slli	a0,s1,0x3
    80002118:	00007497          	auipc	s1,0x7
    8000211c:	8884b483          	ld	s1,-1912(s1) # 800089a0 <_ZL13slabAllocator>
    80002120:	00a48533          	add	a0,s1,a0
    80002124:	00053503          	ld	a0,0(a0)
    80002128:	00000097          	auipc	ra,0x0
    8000212c:	b18080e7          	jalr	-1256(ra) # 80001c40 <_Z16kmem_cache_allocP12kmem_cache_s>
    80002130:	00050913          	mv	s2,a0
}
    80002134:	00090513          	mv	a0,s2
    80002138:	02813083          	ld	ra,40(sp)
    8000213c:	02013403          	ld	s0,32(sp)
    80002140:	01813483          	ld	s1,24(sp)
    80002144:	01013903          	ld	s2,16(sp)
    80002148:	00813983          	ld	s3,8(sp)
    8000214c:	03010113          	addi	sp,sp,48
    80002150:	00008067          	ret
        slabAllocator->cachesBuffers[index] = (kmem_cache_t*)kmem_cache_alloc(&slabAllocator->cacheOfCaches);
    80002154:	06890513          	addi	a0,s2,104
    80002158:	00000097          	auipc	ra,0x0
    8000215c:	ae8080e7          	jalr	-1304(ra) # 80001c40 <_Z16kmem_cache_allocP12kmem_cache_s>
    80002160:	00349713          	slli	a4,s1,0x3
    80002164:	00e90933          	add	s2,s2,a4
    80002168:	00a93023          	sd	a0,0(s2)
        if(slabAllocator->cachesBuffers[index] == nullptr)
    8000216c:	00007797          	auipc	a5,0x7
    80002170:	8347b783          	ld	a5,-1996(a5) # 800089a0 <_ZL13slabAllocator>
    80002174:	00e787b3          	add	a5,a5,a4
    80002178:	0007b903          	ld	s2,0(a5)
    8000217c:	fa090ce3          	beqz	s2,80002134 <_Z7kmallocm+0x84>
        init_cache(slabAllocator->cachesBuffers[index], "Cache for small buffers", getOptimalSlabSize(size), size, nullptr,nullptr);
    80002180:	00098513          	mv	a0,s3
    80002184:	fffff097          	auipc	ra,0xfffff
    80002188:	734080e7          	jalr	1844(ra) # 800018b8 <_Z18getOptimalSlabSizem>
    8000218c:	00050613          	mv	a2,a0
    80002190:	00000793          	li	a5,0
    80002194:	00000713          	li	a4,0
    80002198:	00098693          	mv	a3,s3
    8000219c:	00006597          	auipc	a1,0x6
    800021a0:	07c58593          	addi	a1,a1,124 # 80008218 <CONSOLE_STATUS+0x208>
    800021a4:	00090513          	mv	a0,s2
    800021a8:	fffff097          	auipc	ra,0xfffff
    800021ac:	1b8080e7          	jalr	440(ra) # 80001360 <_Z10init_cacheP12kmem_cache_sPKcmmPFvPvES5_>
    800021b0:	f65ff06f          	j	80002114 <_Z7kmallocm+0x64>

00000000800021b4 <_Z5kfreePKv>:

void kfree(const void *objp)
{
    if(objp == nullptr)
    800021b4:	08050263          	beqz	a0,80002238 <_Z5kfreePKv+0x84>
{
    800021b8:	fe010113          	addi	sp,sp,-32
    800021bc:	00113c23          	sd	ra,24(sp)
    800021c0:	00813823          	sd	s0,16(sp)
    800021c4:	00913423          	sd	s1,8(sp)
    800021c8:	01213023          	sd	s2,0(sp)
    800021cc:	02010413          	addi	s0,sp,32
    800021d0:	00050913          	mv	s2,a0
        return;
    slab_t* slab = nullptr;
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    800021d4:	00000493          	li	s1,0
    slab_t* slab = nullptr;
    800021d8:	00000513          	li	a0,0
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    800021dc:	00c00793          	li	a5,12
    800021e0:	0297e863          	bltu	a5,s1,80002210 <_Z5kfreePKv+0x5c>
    {
        slab = findSlab(slabAllocator->cachesBuffers[i], objp);
    800021e4:	00349793          	slli	a5,s1,0x3
    800021e8:	00006717          	auipc	a4,0x6
    800021ec:	7b873703          	ld	a4,1976(a4) # 800089a0 <_ZL13slabAllocator>
    800021f0:	00f707b3          	add	a5,a4,a5
    800021f4:	00090593          	mv	a1,s2
    800021f8:	0007b503          	ld	a0,0(a5)
    800021fc:	fffff097          	auipc	ra,0xfffff
    80002200:	774080e7          	jalr	1908(ra) # 80001970 <_Z8findSlabP12kmem_cache_sPKv>
        if(slab != nullptr) break;
    80002204:	00051663          	bnez	a0,80002210 <_Z5kfreePKv+0x5c>
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    80002208:	00148493          	addi	s1,s1,1
    8000220c:	fd1ff06f          	j	800021dc <_Z5kfreePKv+0x28>
    }
    if(slab != nullptr)
    80002210:	00050863          	beqz	a0,80002220 <_Z5kfreePKv+0x6c>
    {
        free_slab_object(slab, objp);
    80002214:	00090593          	mv	a1,s2
    80002218:	00000097          	auipc	ra,0x0
    8000221c:	8b8080e7          	jalr	-1864(ra) # 80001ad0 <_Z16free_slab_objectP6slab_sPKv>
    }
}
    80002220:	01813083          	ld	ra,24(sp)
    80002224:	01013403          	ld	s0,16(sp)
    80002228:	00813483          	ld	s1,8(sp)
    8000222c:	00013903          	ld	s2,0(sp)
    80002230:	02010113          	addi	sp,sp,32
    80002234:	00008067          	ret
    80002238:	00008067          	ret

000000008000223c <_Z18kmem_cache_destroyP12kmem_cache_s>:

void kmem_cache_destroy(kmem_cache_t *cachep)
{
    8000223c:	fe010113          	addi	sp,sp,-32
    80002240:	00113c23          	sd	ra,24(sp)
    80002244:	00813823          	sd	s0,16(sp)
    80002248:	00913423          	sd	s1,8(sp)
    8000224c:	02010413          	addi	s0,sp,32
    80002250:	00050493          	mv	s1,a0
    if(cachep->slabs_partial != nullptr || cachep->slabs_full != nullptr) {
    80002254:	05053783          	ld	a5,80(a0)
    80002258:	02078263          	beqz	a5,8000227c <_Z18kmem_cache_destroyP12kmem_cache_s+0x40>
        cachep->errors |= DESTROY_ERROR;
    8000225c:	0784a783          	lw	a5,120(s1)
    80002260:	0027e793          	ori	a5,a5,2
    80002264:	06f4ac23          	sw	a5,120(s1)
    }
    destroy_slab_list(&cachep->slabs_empty);
    destroy_slab_list(&cachep->slabs_partial);
    destroy_slab_list(&cachep->slabs_full);
    kmem_cache_free(&slabAllocator->cacheOfCaches,cachep);
}
    80002268:	01813083          	ld	ra,24(sp)
    8000226c:	01013403          	ld	s0,16(sp)
    80002270:	00813483          	ld	s1,8(sp)
    80002274:	02010113          	addi	sp,sp,32
    80002278:	00008067          	ret
    if(cachep->slabs_partial != nullptr || cachep->slabs_full != nullptr) {
    8000227c:	04853783          	ld	a5,72(a0)
    80002280:	fc079ee3          	bnez	a5,8000225c <_Z18kmem_cache_destroyP12kmem_cache_s+0x20>
    destroy_slab_list(&cachep->slabs_empty);
    80002284:	04050513          	addi	a0,a0,64
    80002288:	fffff097          	auipc	ra,0xfffff
    8000228c:	054080e7          	jalr	84(ra) # 800012dc <_Z17destroy_slab_listPP6slab_s>
    destroy_slab_list(&cachep->slabs_partial);
    80002290:	05048513          	addi	a0,s1,80
    80002294:	fffff097          	auipc	ra,0xfffff
    80002298:	048080e7          	jalr	72(ra) # 800012dc <_Z17destroy_slab_listPP6slab_s>
    destroy_slab_list(&cachep->slabs_full);
    8000229c:	04848513          	addi	a0,s1,72
    800022a0:	fffff097          	auipc	ra,0xfffff
    800022a4:	03c080e7          	jalr	60(ra) # 800012dc <_Z17destroy_slab_listPP6slab_s>
    kmem_cache_free(&slabAllocator->cacheOfCaches,cachep);
    800022a8:	00048593          	mv	a1,s1
    800022ac:	00006517          	auipc	a0,0x6
    800022b0:	6f453503          	ld	a0,1780(a0) # 800089a0 <_ZL13slabAllocator>
    800022b4:	06850513          	addi	a0,a0,104
    800022b8:	00000097          	auipc	ra,0x0
    800022bc:	b64080e7          	jalr	-1180(ra) # 80001e1c <_Z15kmem_cache_freeP12kmem_cache_sPv>
    800022c0:	fa9ff06f          	j	80002268 <_Z18kmem_cache_destroyP12kmem_cache_s+0x2c>

00000000800022c4 <_Z17kmem_cache_shrinkP12kmem_cache_s>:

int kmem_cache_shrink(kmem_cache_t *cachep)
{
    if(cachep == nullptr)
    800022c4:	02050863          	beqz	a0,800022f4 <_Z17kmem_cache_shrinkP12kmem_cache_s+0x30>
{
    800022c8:	ff010113          	addi	sp,sp,-16
    800022cc:	00113423          	sd	ra,8(sp)
    800022d0:	00813023          	sd	s0,0(sp)
    800022d4:	01010413          	addi	s0,sp,16
        return 0;
    int totalBlocks = destroy_slab_list(&cachep->slabs_empty);
    800022d8:	04050513          	addi	a0,a0,64
    800022dc:	fffff097          	auipc	ra,0xfffff
    800022e0:	000080e7          	jalr	ra # 800012dc <_Z17destroy_slab_listPP6slab_s>
    return totalBlocks;
}
    800022e4:	00813083          	ld	ra,8(sp)
    800022e8:	00013403          	ld	s0,0(sp)
    800022ec:	01010113          	addi	sp,sp,16
    800022f0:	00008067          	ret
        return 0;
    800022f4:	00000513          	li	a0,0
}
    800022f8:	00008067          	ret

00000000800022fc <_Z16kmem_cache_errorP12kmem_cache_s>:

int kmem_cache_error(kmem_cache_t *cachep)
{
    if(cachep == nullptr)
    800022fc:	06050c63          	beqz	a0,80002374 <_Z16kmem_cache_errorP12kmem_cache_s+0x78>
{
    80002300:	fe010113          	addi	sp,sp,-32
    80002304:	00113c23          	sd	ra,24(sp)
    80002308:	00813823          	sd	s0,16(sp)
    8000230c:	00913423          	sd	s1,8(sp)
    80002310:	02010413          	addi	s0,sp,32
    80002314:	00050493          	mv	s1,a0
        return 0;

    if(cachep->errors & EXPAND_ERROR)
    80002318:	07852783          	lw	a5,120(a0)
    8000231c:	0017f793          	andi	a5,a5,1
    80002320:	02079663          	bnez	a5,8000234c <_Z16kmem_cache_errorP12kmem_cache_s+0x50>
        KConsole::trapPrintString("EXPAND ERROR\n");
    if(cachep->errors & DESTROY_ERROR)
    80002324:	0784a783          	lw	a5,120(s1)
    80002328:	0027f793          	andi	a5,a5,2
    8000232c:	02079a63          	bnez	a5,80002360 <_Z16kmem_cache_errorP12kmem_cache_s+0x64>
        KConsole::trapPrintString("DESTROY ERROR");

    cachep->errors = NO_ERROR;
    80002330:	0604ac23          	sw	zero,120(s1)

    return cachep->errors;
}
    80002334:	00000513          	li	a0,0
    80002338:	01813083          	ld	ra,24(sp)
    8000233c:	01013403          	ld	s0,16(sp)
    80002340:	00813483          	ld	s1,8(sp)
    80002344:	02010113          	addi	sp,sp,32
    80002348:	00008067          	ret
        KConsole::trapPrintString("EXPAND ERROR\n");
    8000234c:	00006517          	auipc	a0,0x6
    80002350:	ee450513          	addi	a0,a0,-284 # 80008230 <CONSOLE_STATUS+0x220>
    80002354:	00001097          	auipc	ra,0x1
    80002358:	170080e7          	jalr	368(ra) # 800034c4 <_ZN8KConsole15trapPrintStringEPKc>
    8000235c:	fc9ff06f          	j	80002324 <_Z16kmem_cache_errorP12kmem_cache_s+0x28>
        KConsole::trapPrintString("DESTROY ERROR");
    80002360:	00006517          	auipc	a0,0x6
    80002364:	ee050513          	addi	a0,a0,-288 # 80008240 <CONSOLE_STATUS+0x230>
    80002368:	00001097          	auipc	ra,0x1
    8000236c:	15c080e7          	jalr	348(ra) # 800034c4 <_ZN8KConsole15trapPrintStringEPKc>
    80002370:	fc1ff06f          	j	80002330 <_Z16kmem_cache_errorP12kmem_cache_s+0x34>
}
    80002374:	00000513          	li	a0,0
    80002378:	00008067          	ret

000000008000237c <_ZN3PCB6runnerEv>:
{
    Scheduler::put(this);
}

void PCB::runner()
{
    8000237c:	ff010113          	addi	sp,sp,-16
    80002380:	00113423          	sd	ra,8(sp)
    80002384:	00813023          	sd	s0,0(sp)
    80002388:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    8000238c:	00002097          	auipc	ra,0x2
    80002390:	8a8080e7          	jalr	-1880(ra) # 80003c34 <_ZN5Riscv10popSppSpieEv>
    running->body(running->args);
    80002394:	00006797          	auipc	a5,0x6
    80002398:	6147b783          	ld	a5,1556(a5) # 800089a8 <_ZN3PCB7runningE>
    8000239c:	0287b703          	ld	a4,40(a5)
    800023a0:	0307b503          	ld	a0,48(a5)
    800023a4:	000700e7          	jalr	a4

    thread_exit_kernel();
    800023a8:	fffff097          	auipc	ra,0xfffff
    800023ac:	ed8080e7          	jalr	-296(ra) # 80001280 <_Z18thread_exit_kernelv>
}
    800023b0:	00813083          	ld	ra,8(sp)
    800023b4:	00013403          	ld	s0,0(sp)
    800023b8:	01010113          	addi	sp,sp,16
    800023bc:	00008067          	ret

00000000800023c0 <_ZN3PCBC1EPFvPvES0_S0_m>:
PCB::PCB(Body body, void *args, void* stack_space, uint64 timeSlice) :
    800023c0:	ff010113          	addi	sp,sp,-16
    800023c4:	00813423          	sd	s0,8(sp)
    800023c8:	01010413          	addi	s0,sp,16
    })
    800023cc:	00050023          	sb	zero,0(a0)
    800023d0:	00e53c23          	sd	a4,24(a0)
    800023d4:	02053023          	sd	zero,32(a0)
    800023d8:	02b53423          	sd	a1,40(a0)
    800023dc:	02c53823          	sd	a2,48(a0)
    800023e0:	02d53c23          	sd	a3,56(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    800023e4:	000017b7          	lui	a5,0x1
    800023e8:	00f686b3          	add	a3,a3,a5
    })
    800023ec:	04d53423          	sd	a3,72(a0)
    800023f0:	00000797          	auipc	a5,0x0
    800023f4:	f8c78793          	addi	a5,a5,-116 # 8000237c <_ZN3PCB6runnerEv>
    800023f8:	04f53823          	sd	a5,80(a0)
    800023fc:	04050c23          	sb	zero,88(a0)
    nextPCB = 0;
    80002400:	00053423          	sd	zero,8(a0)
}
    80002404:	00813403          	ld	s0,8(sp)
    80002408:	01010113          	addi	sp,sp,16
    8000240c:	00008067          	ret

0000000080002410 <_ZN3PCB5startEv>:
{
    80002410:	ff010113          	addi	sp,sp,-16
    80002414:	00113423          	sd	ra,8(sp)
    80002418:	00813023          	sd	s0,0(sp)
    8000241c:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    80002420:	00001097          	auipc	ra,0x1
    80002424:	35c080e7          	jalr	860(ra) # 8000377c <_ZN9Scheduler3putEP3PCB>
}
    80002428:	00813083          	ld	ra,8(sp)
    8000242c:	00013403          	ld	s0,0(sp)
    80002430:	01010113          	addi	sp,sp,16
    80002434:	00008067          	ret

0000000080002438 <_ZN3PCB8dispatchEv>:

void PCB::dispatch()
{
    80002438:	fe010113          	addi	sp,sp,-32
    8000243c:	00113c23          	sd	ra,24(sp)
    80002440:	00813823          	sd	s0,16(sp)
    80002444:	00913423          	sd	s1,8(sp)
    80002448:	01213023          	sd	s2,0(sp)
    8000244c:	02010413          	addi	s0,sp,32
    PCB* old = running;
    80002450:	00006497          	auipc	s1,0x6
    80002454:	5584b483          	ld	s1,1368(s1) # 800089a8 <_ZN3PCB7runningE>

    void* operator new(size_t size);
    void operator delete(void *p);

    enum State{READY, RUNNING, SUSPENDED, FINISHED, EXITING, SLEEPING};
    State getState() {return state;}
    80002458:	0404a703          	lw	a4,64(s1)
    if(old->getState() == PCB::RUNNING)
    8000245c:	00100793          	li	a5,1
    80002460:	04f70a63          	beq	a4,a5,800024b4 <_ZN3PCB8dispatchEv+0x7c>
        Scheduler::put(old);

    PCB::running = Scheduler::get();
    80002464:	00001097          	auipc	ra,0x1
    80002468:	36c080e7          	jalr	876(ra) # 800037d0 <_ZN9Scheduler3getEv>
    8000246c:	00006917          	auipc	s2,0x6
    80002470:	53c90913          	addi	s2,s2,1340 # 800089a8 <_ZN3PCB7runningE>
    80002474:	00a93023          	sd	a0,0(s2)
    void setState(State s) {state = s;}
    80002478:	00100793          	li	a5,1
    8000247c:	04f52023          	sw	a5,64(a0)
    PCB::running->setState(PCB::RUNNING);

    Riscv::changePrivMode();
    80002480:	00002097          	auipc	ra,0x2
    80002484:	d90080e7          	jalr	-624(ra) # 80004210 <_ZN5Riscv14changePrivModeEv>

    PCB::contextSwitch(&old->context, &running->context);
    80002488:	00093583          	ld	a1,0(s2)
    8000248c:	04858593          	addi	a1,a1,72
    80002490:	04848513          	addi	a0,s1,72
    80002494:	fffff097          	auipc	ra,0xfffff
    80002498:	d84080e7          	jalr	-636(ra) # 80001218 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    8000249c:	01813083          	ld	ra,24(sp)
    800024a0:	01013403          	ld	s0,16(sp)
    800024a4:	00813483          	ld	s1,8(sp)
    800024a8:	00013903          	ld	s2,0(sp)
    800024ac:	02010113          	addi	sp,sp,32
    800024b0:	00008067          	ret
        Scheduler::put(old);
    800024b4:	00048513          	mv	a0,s1
    800024b8:	00001097          	auipc	ra,0x1
    800024bc:	2c4080e7          	jalr	708(ra) # 8000377c <_ZN9Scheduler3putEP3PCB>
    800024c0:	fa5ff06f          	j	80002464 <_ZN3PCB8dispatchEv+0x2c>

00000000800024c4 <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    800024c4:	ff010113          	addi	sp,sp,-16
    800024c8:	00113423          	sd	ra,8(sp)
    800024cc:	00813023          	sd	s0,0(sp)
    800024d0:	01010413          	addi	s0,sp,16
    return kmem_cache_alloc(Riscv::pcbCache);
    800024d4:	00006797          	auipc	a5,0x6
    800024d8:	46c7b783          	ld	a5,1132(a5) # 80008940 <_GLOBAL_OFFSET_TABLE_+0xa8>
    800024dc:	0007b503          	ld	a0,0(a5)
    800024e0:	fffff097          	auipc	ra,0xfffff
    800024e4:	760080e7          	jalr	1888(ra) # 80001c40 <_Z16kmem_cache_allocP12kmem_cache_s>
    //return MemoryAllocator::kmalloc(size);
}
    800024e8:	00813083          	ld	ra,8(sp)
    800024ec:	00013403          	ld	s0,0(sp)
    800024f0:	01010113          	addi	sp,sp,16
    800024f4:	00008067          	ret

00000000800024f8 <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    800024f8:	ff010113          	addi	sp,sp,-16
    800024fc:	00113423          	sd	ra,8(sp)
    80002500:	00813023          	sd	s0,0(sp)
    80002504:	01010413          	addi	s0,sp,16
    80002508:	00050593          	mv	a1,a0
    kmem_cache_free(Riscv::pcbCache, p);
    8000250c:	00006797          	auipc	a5,0x6
    80002510:	4347b783          	ld	a5,1076(a5) # 80008940 <_GLOBAL_OFFSET_TABLE_+0xa8>
    80002514:	0007b503          	ld	a0,0(a5)
    80002518:	00000097          	auipc	ra,0x0
    8000251c:	904080e7          	jalr	-1788(ra) # 80001e1c <_Z15kmem_cache_freeP12kmem_cache_sPv>
    //MemoryAllocator::kfree(p);
}
    80002520:	00813083          	ld	ra,8(sp)
    80002524:	00013403          	ld	s0,0(sp)
    80002528:	01010113          	addi	sp,sp,16
    8000252c:	00008067          	ret

0000000080002530 <_ZN3PCBD1Ev>:

PCB::~PCB()
    80002530:	ff010113          	addi	sp,sp,-16
    80002534:	00113423          	sd	ra,8(sp)
    80002538:	00813023          	sd	s0,0(sp)
    8000253c:	01010413          	addi	s0,sp,16
{
    MemoryAllocator::kfree(beginSP);
    80002540:	03853503          	ld	a0,56(a0)
    80002544:	00002097          	auipc	ra,0x2
    80002548:	438080e7          	jalr	1080(ra) # 8000497c <_ZN15MemoryAllocator5kfreeEPv>
}
    8000254c:	00813083          	ld	ra,8(sp)
    80002550:	00013403          	ld	s0,0(sp)
    80002554:	01010113          	addi	sp,sp,16
    80002558:	00008067          	ret

000000008000255c <_ZN3PCB10initializeEv>:

void PCB::initialize()
{
    8000255c:	fe010113          	addi	sp,sp,-32
    80002560:	00113c23          	sd	ra,24(sp)
    80002564:	00813823          	sd	s0,16(sp)
    80002568:	00913423          	sd	s1,8(sp)
    8000256c:	01213023          	sd	s2,0(sp)
    80002570:	02010413          	addi	s0,sp,32
    PCB* mainSystem = new PCB(0, 0, 0, 0);
    80002574:	06000513          	li	a0,96
    80002578:	00000097          	auipc	ra,0x0
    8000257c:	f4c080e7          	jalr	-180(ra) # 800024c4 <_ZN3PCBnwEm>
    80002580:	00050493          	mv	s1,a0
    80002584:	00050e63          	beqz	a0,800025a0 <_ZN3PCB10initializeEv+0x44>
    80002588:	00000713          	li	a4,0
    8000258c:	00000693          	li	a3,0
    80002590:	00000613          	li	a2,0
    80002594:	00000593          	li	a1,0
    80002598:	00000097          	auipc	ra,0x0
    8000259c:	e28080e7          	jalr	-472(ra) # 800023c0 <_ZN3PCBC1EPFvPvES0_S0_m>
    mainSystem->systemThread = true;
    800025a0:	00100793          	li	a5,1
    800025a4:	00f48023          	sb	a5,0(s1)
    PCB::running = mainSystem;
    800025a8:	00006797          	auipc	a5,0x6
    800025ac:	4097b023          	sd	s1,1024(a5) # 800089a8 <_ZN3PCB7runningE>
    800025b0:	00100793          	li	a5,1
    800025b4:	04f4a023          	sw	a5,64(s1)
    PCB::running->setState(PCB::RUNNING);
    PCB::consolePCB = new PCB(&KConsole::sendCharactersToConsole, 0,
                              kmalloc(DEFAULT_STACK_SIZE),
    800025b8:	00001537          	lui	a0,0x1
    800025bc:	00000097          	auipc	ra,0x0
    800025c0:	af4080e7          	jalr	-1292(ra) # 800020b0 <_Z7kmallocm>
    800025c4:	00050913          	mv	s2,a0
//                              MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE),
                              DEFAULT_TIME_SLICE);
    800025c8:	06000513          	li	a0,96
    800025cc:	00000097          	auipc	ra,0x0
    800025d0:	ef8080e7          	jalr	-264(ra) # 800024c4 <_ZN3PCBnwEm>
    800025d4:	00050493          	mv	s1,a0
    800025d8:	02050063          	beqz	a0,800025f8 <_ZN3PCB10initializeEv+0x9c>
    800025dc:	00200713          	li	a4,2
    800025e0:	00090693          	mv	a3,s2
    800025e4:	00000613          	li	a2,0
    800025e8:	00006597          	auipc	a1,0x6
    800025ec:	3185b583          	ld	a1,792(a1) # 80008900 <_GLOBAL_OFFSET_TABLE_+0x68>
    800025f0:	00000097          	auipc	ra,0x0
    800025f4:	dd0080e7          	jalr	-560(ra) # 800023c0 <_ZN3PCBC1EPFvPvES0_S0_m>
    PCB::consolePCB = new PCB(&KConsole::sendCharactersToConsole, 0,
    800025f8:	00006797          	auipc	a5,0x6
    800025fc:	3b078793          	addi	a5,a5,944 # 800089a8 <_ZN3PCB7runningE>
    80002600:	0097b423          	sd	s1,8(a5)
    PCB::consolePCB->systemThread = true;
    80002604:	00100713          	li	a4,1
    80002608:	00e48023          	sb	a4,0(s1)
    PCB::consolePCB->start();
    8000260c:	0087b503          	ld	a0,8(a5)
    80002610:	00000097          	auipc	ra,0x0
    80002614:	e00080e7          	jalr	-512(ra) # 80002410 <_ZN3PCB5startEv>
    PCB::userPCB = new PCB(&PCBWrapperUser::userMainWrapper, 0,
//                           kmalloc(DEFAULT_STACK_SIZE),
                           MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE),
    80002618:	00001537          	lui	a0,0x1
    8000261c:	00002097          	auipc	ra,0x2
    80002620:	2f0080e7          	jalr	752(ra) # 8000490c <_ZN15MemoryAllocator7kmallocEm>
    80002624:	00050913          	mv	s2,a0
                           DEFAULT_TIME_SLICE);
    80002628:	06000513          	li	a0,96
    8000262c:	00000097          	auipc	ra,0x0
    80002630:	e98080e7          	jalr	-360(ra) # 800024c4 <_ZN3PCBnwEm>
    80002634:	00050493          	mv	s1,a0
    80002638:	02050063          	beqz	a0,80002658 <_ZN3PCB10initializeEv+0xfc>
    8000263c:	00200713          	li	a4,2
    80002640:	00090693          	mv	a3,s2
    80002644:	00000613          	li	a2,0
    80002648:	00006597          	auipc	a1,0x6
    8000264c:	2c05b583          	ld	a1,704(a1) # 80008908 <_GLOBAL_OFFSET_TABLE_+0x70>
    80002650:	00000097          	auipc	ra,0x0
    80002654:	d70080e7          	jalr	-656(ra) # 800023c0 <_ZN3PCBC1EPFvPvES0_S0_m>
    PCB::userPCB = new PCB(&PCBWrapperUser::userMainWrapper, 0,
    80002658:	00006797          	auipc	a5,0x6
    8000265c:	3697b023          	sd	s1,864(a5) # 800089b8 <_ZN3PCB7userPCBE>
    PCB::userPCB->start();
    80002660:	00048513          	mv	a0,s1
    80002664:	00000097          	auipc	ra,0x0
    80002668:	dac080e7          	jalr	-596(ra) # 80002410 <_ZN3PCB5startEv>
}
    8000266c:	01813083          	ld	ra,24(sp)
    80002670:	01013403          	ld	s0,16(sp)
    80002674:	00813483          	ld	s1,8(sp)
    80002678:	00013903          	ld	s2,0(sp)
    8000267c:	02010113          	addi	sp,sp,32
    80002680:	00008067          	ret

0000000080002684 <_ZN3PCB10isFinishedEv>:

bool PCB::isFinished()
{
    80002684:	ff010113          	addi	sp,sp,-16
    80002688:	00813423          	sd	s0,8(sp)
    8000268c:	01010413          	addi	s0,sp,16
    return state == PCB::FINISHED;
    80002690:	04052503          	lw	a0,64(a0) # 1040 <_entry-0x7fffefc0>
    80002694:	ffd50513          	addi	a0,a0,-3
}
    80002698:	00153513          	seqz	a0,a0
    8000269c:	00813403          	ld	s0,8(sp)
    800026a0:	01010113          	addi	sp,sp,16
    800026a4:	00008067          	ret

00000000800026a8 <_ZN3PCB17threadExitHandlerEv>:

void PCB::threadExitHandler()
{
    800026a8:	ff010113          	addi	sp,sp,-16
    800026ac:	00113423          	sd	ra,8(sp)
    800026b0:	00813023          	sd	s0,0(sp)
    800026b4:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    800026b8:	00006797          	auipc	a5,0x6
    800026bc:	2f078793          	addi	a5,a5,752 # 800089a8 <_ZN3PCB7runningE>
    800026c0:	0007bc23          	sd	zero,24(a5)
    PCB::running->setState(PCB::FINISHED);
    800026c4:	0007b783          	ld	a5,0(a5)
    800026c8:	00300713          	li	a4,3
    800026cc:	04e7a023          	sw	a4,64(a5)
    PCB::dispatch();
    800026d0:	00000097          	auipc	ra,0x0
    800026d4:	d68080e7          	jalr	-664(ra) # 80002438 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0");
    800026d8:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    800026dc:	00002097          	auipc	ra,0x2
    800026e0:	afc080e7          	jalr	-1284(ra) # 800041d8 <_ZN5Riscv13w_a0_sscratchEv>
}
    800026e4:	00813083          	ld	ra,8(sp)
    800026e8:	00013403          	ld	s0,0(sp)
    800026ec:	01010113          	addi	sp,sp,16
    800026f0:	00008067          	ret

00000000800026f4 <_ZN3PCB21threadDispatchHandlerEv>:

void PCB::threadDispatchHandler()
{
    800026f4:	ff010113          	addi	sp,sp,-16
    800026f8:	00113423          	sd	ra,8(sp)
    800026fc:	00813023          	sd	s0,0(sp)
    80002700:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    80002704:	00006797          	auipc	a5,0x6
    80002708:	2a07be23          	sd	zero,700(a5) # 800089c0 <_ZN3PCB16timeSliceCounterE>
    PCB::dispatch();
    8000270c:	00000097          	auipc	ra,0x0
    80002710:	d2c080e7          	jalr	-724(ra) # 80002438 <_ZN3PCB8dispatchEv>
}
    80002714:	00813083          	ld	ra,8(sp)
    80002718:	00013403          	ld	s0,0(sp)
    8000271c:	01010113          	addi	sp,sp,16
    80002720:	00008067          	ret

0000000080002724 <_ZN3PCB18threadSleepHandlerEv>:

void PCB::threadSleepHandler()
{
    80002724:	ff010113          	addi	sp,sp,-16
    80002728:	00113423          	sd	ra,8(sp)
    8000272c:	00813023          	sd	s0,0(sp)
    80002730:	01010413          	addi	s0,sp,16
    uint64 time;
    __asm__ volatile("mv %0, a1" : "=r"(time));
    80002734:	00058793          	mv	a5,a1
    PCB::timeSliceCounter = 0;
    80002738:	00006717          	auipc	a4,0x6
    8000273c:	27070713          	addi	a4,a4,624 # 800089a8 <_ZN3PCB7runningE>
    80002740:	00073c23          	sd	zero,24(a4)
    PCB::running->setTimeToSleep(time + Riscv::totalTime);
    80002744:	00073703          	ld	a4,0(a4)
    80002748:	00006697          	auipc	a3,0x6
    8000274c:	1b06b683          	ld	a3,432(a3) # 800088f8 <_GLOBAL_OFFSET_TABLE_+0x60>
    80002750:	0006b683          	ld	a3,0(a3)
    80002754:	00d787b3          	add	a5,a5,a3
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002758:	02f73023          	sd	a5,32(a4)
    SleepPCBList::insertSleepingPCB();
    8000275c:	00001097          	auipc	ra,0x1
    80002760:	ea4080e7          	jalr	-348(ra) # 80003600 <_ZN12SleepPCBList17insertSleepingPCBEv>
    PCB::dispatch();
    80002764:	00000097          	auipc	ra,0x0
    80002768:	cd4080e7          	jalr	-812(ra) # 80002438 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0x0");
    8000276c:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002770:	00002097          	auipc	ra,0x2
    80002774:	a68080e7          	jalr	-1432(ra) # 800041d8 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002778:	00813083          	ld	ra,8(sp)
    8000277c:	00013403          	ld	s0,0(sp)
    80002780:	01010113          	addi	sp,sp,16
    80002784:	00008067          	ret

0000000080002788 <_ZN3PCB19threadCreateHandlerEv>:

void PCB::threadCreateHandler()
{
    80002788:	fd010113          	addi	sp,sp,-48
    8000278c:	02113423          	sd	ra,40(sp)
    80002790:	02813023          	sd	s0,32(sp)
    80002794:	00913c23          	sd	s1,24(sp)
    80002798:	01213823          	sd	s2,16(sp)
    8000279c:	01313423          	sd	s3,8(sp)
    800027a0:	01413023          	sd	s4,0(sp)
    800027a4:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    800027a8:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    800027ac:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    800027b0:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args,
                          //stack_space,
                          (void *) PCB::savedRegA4,
                          DEFAULT_TIME_SLICE);
    800027b4:	06000513          	li	a0,96
    800027b8:	00000097          	auipc	ra,0x0
    800027bc:	d0c080e7          	jalr	-756(ra) # 800024c4 <_ZN3PCBnwEm>
    800027c0:	00050493          	mv	s1,a0
    800027c4:	02050063          	beqz	a0,800027e4 <_ZN3PCB19threadCreateHandlerEv+0x5c>
    800027c8:	00200713          	li	a4,2
    800027cc:	00006697          	auipc	a3,0x6
    800027d0:	1fc6b683          	ld	a3,508(a3) # 800089c8 <_ZN3PCB10savedRegA4E>
    800027d4:	000a0613          	mv	a2,s4
    800027d8:	00098593          	mv	a1,s3
    800027dc:	00000097          	auipc	ra,0x0
    800027e0:	be4080e7          	jalr	-1052(ra) # 800023c0 <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    800027e4:	00993023          	sd	s1,0(s2)

    if (newPCB == nullptr) {
    800027e8:	02048e63          	beqz	s1,80002824 <_ZN3PCB19threadCreateHandlerEv+0x9c>
        __asm__ volatile("li a0, 0x01");
    }
    else
    {
        newPCB->start();
    800027ec:	00048513          	mv	a0,s1
    800027f0:	00000097          	auipc	ra,0x0
    800027f4:	c20080e7          	jalr	-992(ra) # 80002410 <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    800027f8:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    800027fc:	00002097          	auipc	ra,0x2
    80002800:	9dc080e7          	jalr	-1572(ra) # 800041d8 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002804:	02813083          	ld	ra,40(sp)
    80002808:	02013403          	ld	s0,32(sp)
    8000280c:	01813483          	ld	s1,24(sp)
    80002810:	01013903          	ld	s2,16(sp)
    80002814:	00813983          	ld	s3,8(sp)
    80002818:	00013a03          	ld	s4,0(sp)
    8000281c:	03010113          	addi	sp,sp,48
    80002820:	00008067          	ret
        __asm__ volatile("li a0, 0x01");
    80002824:	00100513          	li	a0,1
    80002828:	fd5ff06f          	j	800027fc <_ZN3PCB19threadCreateHandlerEv+0x74>

000000008000282c <_ZN3PCB18threadStartHandlerEv>:

void PCB::threadStartHandler()
{
    8000282c:	ff010113          	addi	sp,sp,-16
    80002830:	00113423          	sd	ra,8(sp)
    80002834:	00813023          	sd	s0,0(sp)
    80002838:	01010413          	addi	s0,sp,16
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    8000283c:	00058513          	mv	a0,a1
    if(pcb != nullptr)
    80002840:	02050463          	beqz	a0,80002868 <_ZN3PCB18threadStartHandlerEv+0x3c>
    {
        pcb->start();
    80002844:	00000097          	auipc	ra,0x0
    80002848:	bcc080e7          	jalr	-1076(ra) # 80002410 <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    8000284c:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0x01");
    }
    Riscv::w_a0_sscratch();
    80002850:	00002097          	auipc	ra,0x2
    80002854:	988080e7          	jalr	-1656(ra) # 800041d8 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002858:	00813083          	ld	ra,8(sp)
    8000285c:	00013403          	ld	s0,0(sp)
    80002860:	01010113          	addi	sp,sp,16
    80002864:	00008067          	ret
        __asm__ volatile("li a0, 0x01");
    80002868:	00100513          	li	a0,1
    8000286c:	fe5ff06f          	j	80002850 <_ZN3PCB18threadStartHandlerEv+0x24>

0000000080002870 <_ZN3PCB20threadMakePCBHandlerEv>:

void PCB::threadMakePCBHandler()
{
    80002870:	fd010113          	addi	sp,sp,-48
    80002874:	02113423          	sd	ra,40(sp)
    80002878:	02813023          	sd	s0,32(sp)
    8000287c:	00913c23          	sd	s1,24(sp)
    80002880:	01213823          	sd	s2,16(sp)
    80002884:	01313423          	sd	s3,8(sp)
    80002888:	01413023          	sd	s4,0(sp)
    8000288c:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002890:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002894:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    80002898:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args,
                          //stack_space,
                          (void *) PCB::savedRegA4,
                          DEFAULT_TIME_SLICE);
    8000289c:	06000513          	li	a0,96
    800028a0:	00000097          	auipc	ra,0x0
    800028a4:	c24080e7          	jalr	-988(ra) # 800024c4 <_ZN3PCBnwEm>
    800028a8:	00050493          	mv	s1,a0
    800028ac:	02050063          	beqz	a0,800028cc <_ZN3PCB20threadMakePCBHandlerEv+0x5c>
    800028b0:	00200713          	li	a4,2
    800028b4:	00006697          	auipc	a3,0x6
    800028b8:	1146b683          	ld	a3,276(a3) # 800089c8 <_ZN3PCB10savedRegA4E>
    800028bc:	000a0613          	mv	a2,s4
    800028c0:	00098593          	mv	a1,s3
    800028c4:	00000097          	auipc	ra,0x0
    800028c8:	afc080e7          	jalr	-1284(ra) # 800023c0 <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    800028cc:	00993023          	sd	s1,0(s2)

    if (newPCB == nullptr)
    800028d0:	02048863          	beqz	s1,80002900 <_ZN3PCB20threadMakePCBHandlerEv+0x90>
    {
        __asm__ volatile("li a0, 0x01");
    }
    else
        __asm__ volatile("li a0, 0");
    800028d4:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    800028d8:	00002097          	auipc	ra,0x2
    800028dc:	900080e7          	jalr	-1792(ra) # 800041d8 <_ZN5Riscv13w_a0_sscratchEv>
}
    800028e0:	02813083          	ld	ra,40(sp)
    800028e4:	02013403          	ld	s0,32(sp)
    800028e8:	01813483          	ld	s1,24(sp)
    800028ec:	01013903          	ld	s2,16(sp)
    800028f0:	00813983          	ld	s3,8(sp)
    800028f4:	00013a03          	ld	s4,0(sp)
    800028f8:	03010113          	addi	sp,sp,48
    800028fc:	00008067          	ret
        __asm__ volatile("li a0, 0x01");
    80002900:	00100513          	li	a0,1
    80002904:	fd5ff06f          	j	800028d8 <_ZN3PCB20threadMakePCBHandlerEv+0x68>

0000000080002908 <_ZN3PCB19threadDelPCBHandlerEv>:

void PCB::threadDelPCBHandler()
{
    80002908:	fe010113          	addi	sp,sp,-32
    8000290c:	00113c23          	sd	ra,24(sp)
    80002910:	00813823          	sd	s0,16(sp)
    80002914:	00913423          	sd	s1,8(sp)
    80002918:	02010413          	addi	s0,sp,32
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    8000291c:	00058493          	mv	s1,a1
    if(pcb != nullptr)
    80002920:	02048e63          	beqz	s1,8000295c <_ZN3PCB19threadDelPCBHandlerEv+0x54>
    {
        delete pcb;
    80002924:	00048513          	mv	a0,s1
    80002928:	00000097          	auipc	ra,0x0
    8000292c:	c08080e7          	jalr	-1016(ra) # 80002530 <_ZN3PCBD1Ev>
    80002930:	00048513          	mv	a0,s1
    80002934:	00000097          	auipc	ra,0x0
    80002938:	bc4080e7          	jalr	-1084(ra) # 800024f8 <_ZN3PCBdlEPv>
        __asm__ volatile("li a0, 0x0");
    8000293c:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0x1");
    }
    Riscv::w_a0_sscratch();
    80002940:	00002097          	auipc	ra,0x2
    80002944:	898080e7          	jalr	-1896(ra) # 800041d8 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002948:	01813083          	ld	ra,24(sp)
    8000294c:	01013403          	ld	s0,16(sp)
    80002950:	00813483          	ld	s1,8(sp)
    80002954:	02010113          	addi	sp,sp,32
    80002958:	00008067          	ret
        __asm__ volatile("li a0, 0x1");
    8000295c:	00100513          	li	a0,1
    80002960:	fe1ff06f          	j	80002940 <_ZN3PCB19threadDelPCBHandlerEv+0x38>

0000000080002964 <_Z12getBlockAddrm>:
    addBlocks(addr, level); //adds free blocks
    buddy->numOfFreeBlocks += (1 << level);
}

size_t getBlockAddr(size_t addr)
{
    80002964:	ff010113          	addi	sp,sp,-16
    80002968:	00813423          	sd	s0,8(sp)
    8000296c:	01010413          	addi	s0,sp,16
    size_t mask = ((size_t)-1) << BLOCK_SIZE_POWER_2;
    return addr & mask;
}
    80002970:	fffff7b7          	lui	a5,0xfffff
    80002974:	00f57533          	and	a0,a0,a5
    80002978:	00813403          	ld	s0,8(sp)
    8000297c:	01010113          	addi	sp,sp,16
    80002980:	00008067          	ret

0000000080002984 <_Z16getNextBlockAddrm>:
size_t getNextBlockAddr(size_t addr)
{
    80002984:	ff010113          	addi	sp,sp,-16
    80002988:	00113423          	sd	ra,8(sp)
    8000298c:	00813023          	sd	s0,0(sp)
    80002990:	01010413          	addi	s0,sp,16
    size_t currBlock = getBlockAddr(addr);
    80002994:	00000097          	auipc	ra,0x0
    80002998:	fd0080e7          	jalr	-48(ra) # 80002964 <_Z12getBlockAddrm>
    return currBlock + BLOCK_SIZE;
}
    8000299c:	000017b7          	lui	a5,0x1
    800029a0:	00f50533          	add	a0,a0,a5
    800029a4:	00813083          	ld	ra,8(sp)
    800029a8:	00013403          	ld	s0,0(sp)
    800029ac:	01010113          	addi	sp,sp,16
    800029b0:	00008067          	ret

00000000800029b4 <_Z12getDeg2Floorm>:

size_t getDeg2Floor(size_t num)
{
    800029b4:	ff010113          	addi	sp,sp,-16
    800029b8:	00813423          	sd	s0,8(sp)
    800029bc:	01010413          	addi	s0,sp,16
    size_t x = 1;
    size_t deg = 0;
    800029c0:	00000713          	li	a4,0
    size_t x = 1;
    800029c4:	00100793          	li	a5,1
    while(x <= num)
    800029c8:	00f56863          	bltu	a0,a5,800029d8 <_Z12getDeg2Floorm+0x24>
    {
        deg++;
    800029cc:	00170713          	addi	a4,a4,1
        x<<=1;
    800029d0:	00179793          	slli	a5,a5,0x1
    while(x <= num)
    800029d4:	ff5ff06f          	j	800029c8 <_Z12getDeg2Floorm+0x14>
    }
    return deg - 1;
}
    800029d8:	fff70513          	addi	a0,a4,-1
    800029dc:	00813403          	ld	s0,8(sp)
    800029e0:	01010113          	addi	sp,sp,16
    800029e4:	00008067          	ret

00000000800029e8 <_Z11getDeg2Ceilm>:

size_t getDeg2Ceil(size_t num)
{
    800029e8:	ff010113          	addi	sp,sp,-16
    800029ec:	00813423          	sd	s0,8(sp)
    800029f0:	01010413          	addi	s0,sp,16
    800029f4:	00050713          	mv	a4,a0
    size_t x = 1;
    size_t deg = 0;
    800029f8:	00000513          	li	a0,0
    size_t x = 1;
    800029fc:	00100793          	li	a5,1
    while(x < num)
    80002a00:	00e7f863          	bgeu	a5,a4,80002a10 <_Z11getDeg2Ceilm+0x28>
    {
        deg++;
    80002a04:	00150513          	addi	a0,a0,1
        x<<=1;
    80002a08:	00179793          	slli	a5,a5,0x1
    while(x < num)
    80002a0c:	ff5ff06f          	j	80002a00 <_Z11getDeg2Ceilm+0x18>
    }
    return deg;
}
    80002a10:	00813403          	ld	s0,8(sp)
    80002a14:	01010113          	addi	sp,sp,16
    80002a18:	00008067          	ret

0000000080002a1c <_Z15addBlockToLevelPvm>:
    addBlockToLevel(addr, level);
}

//adds free block to level
void addBlockToLevel(void* addr, size_t level)
{
    80002a1c:	ff010113          	addi	sp,sp,-16
    80002a20:	00813423          	sd	s0,8(sp)
    80002a24:	01010413          	addi	s0,sp,16
    buddyBlock* newBlock = (buddyBlock*)addr;
    newBlock->next = nullptr;
    80002a28:	00053023          	sd	zero,0(a0)
    if(buddy->bucket[level].first == nullptr)
    80002a2c:	00006717          	auipc	a4,0x6
    80002a30:	fa473703          	ld	a4,-92(a4) # 800089d0 <_ZL5buddy>
    80002a34:	00258793          	addi	a5,a1,2
    80002a38:	00479793          	slli	a5,a5,0x4
    80002a3c:	00f707b3          	add	a5,a4,a5
    80002a40:	0007b783          	ld	a5,0(a5) # 1000 <_entry-0x7ffff000>
    80002a44:	02078463          	beqz	a5,80002a6c <_Z15addBlockToLevelPvm+0x50>
    {
        buddy->bucket[level].first = buddy->bucket[level].last = newBlock;
    }
    else
    {
        buddy->bucket[level].last->next = newBlock;
    80002a48:	00258593          	addi	a1,a1,2
    80002a4c:	00459593          	slli	a1,a1,0x4
    80002a50:	00b705b3          	add	a1,a4,a1
    80002a54:	0085b783          	ld	a5,8(a1)
    80002a58:	00a7b023          	sd	a0,0(a5)
        buddy->bucket[level].last = newBlock;
    80002a5c:	00a5b423          	sd	a0,8(a1)
    }
}
    80002a60:	00813403          	ld	s0,8(sp)
    80002a64:	01010113          	addi	sp,sp,16
    80002a68:	00008067          	ret
        buddy->bucket[level].first = buddy->bucket[level].last = newBlock;
    80002a6c:	00258593          	addi	a1,a1,2
    80002a70:	00459793          	slli	a5,a1,0x4
    80002a74:	00f707b3          	add	a5,a4,a5
    80002a78:	00a7b423          	sd	a0,8(a5)
    80002a7c:	00a7b023          	sd	a0,0(a5)
    80002a80:	fe1ff06f          	j	80002a60 <_Z15addBlockToLevelPvm+0x44>

0000000080002a84 <_Z17getBuddyBlockAddrPvm>:

size_t getBuddyBlockAddr(void* addr, size_t level)
{
    80002a84:	ff010113          	addi	sp,sp,-16
    80002a88:	00813423          	sd	s0,8(sp)
    80002a8c:	01010413          	addi	s0,sp,16
    size_t diff = BLOCK_SIZE << level;
    80002a90:	000017b7          	lui	a5,0x1
    80002a94:	00b795bb          	sllw	a1,a5,a1
    size_t off = (size_t)addr - (size_t)buddy->startAddr;
    80002a98:	00006797          	auipc	a5,0x6
    80002a9c:	f387b783          	ld	a5,-200(a5) # 800089d0 <_ZL5buddy>
    80002aa0:	0087b783          	ld	a5,8(a5)
    80002aa4:	40f507b3          	sub	a5,a0,a5
    if(diff & off)
    80002aa8:	00f5f7b3          	and	a5,a1,a5
    80002aac:	00078a63          	beqz	a5,80002ac0 <_Z17getBuddyBlockAddrPvm+0x3c>
        return (size_t)addr - diff;
    80002ab0:	40b50533          	sub	a0,a0,a1
    else
        return (size_t)addr + diff;
}
    80002ab4:	00813403          	ld	s0,8(sp)
    80002ab8:	01010113          	addi	sp,sp,16
    80002abc:	00008067          	ret
        return (size_t)addr + diff;
    80002ac0:	00b50533          	add	a0,a0,a1
    80002ac4:	ff1ff06f          	j	80002ab4 <_Z17getBuddyBlockAddrPvm+0x30>

0000000080002ac8 <_Z5splitPvmmb>:
{
    80002ac8:	fd010113          	addi	sp,sp,-48
    80002acc:	02113423          	sd	ra,40(sp)
    80002ad0:	02813023          	sd	s0,32(sp)
    80002ad4:	00913c23          	sd	s1,24(sp)
    80002ad8:	01213823          	sd	s2,16(sp)
    80002adc:	01313423          	sd	s3,8(sp)
    80002ae0:	03010413          	addi	s0,sp,48
    80002ae4:	00050993          	mv	s3,a0
    if(!splitMore)
    80002ae8:	06068263          	beqz	a3,80002b4c <_Z5splitPvmmb+0x84>
    80002aec:	00058913          	mv	s2,a1
        if(currLevel == finalLevel)
    80002af0:	04b60063          	beq	a2,a1,80002b30 <_Z5splitPvmmb+0x68>
        size_t buddyBlock = getBuddyBlockAddr(addr, currLevel - 1); // currLevel - 1 for next step
    80002af4:	fff60493          	addi	s1,a2,-1
    80002af8:	00048593          	mv	a1,s1
    80002afc:	00000097          	auipc	ra,0x0
    80002b00:	f88080e7          	jalr	-120(ra) # 80002a84 <_Z17getBuddyBlockAddrPvm>
        split((void*)buddyBlock, finalLevel, currLevel - 1, false); // continue splitting
    80002b04:	00000693          	li	a3,0
    80002b08:	00048613          	mv	a2,s1
    80002b0c:	00090593          	mv	a1,s2
    80002b10:	00000097          	auipc	ra,0x0
    80002b14:	fb8080e7          	jalr	-72(ra) # 80002ac8 <_Z5splitPvmmb>
        split(addr, finalLevel, currLevel - 1, true); // continue splitting
    80002b18:	00100693          	li	a3,1
    80002b1c:	00048613          	mv	a2,s1
    80002b20:	00090593          	mv	a1,s2
    80002b24:	00098513          	mv	a0,s3
    80002b28:	00000097          	auipc	ra,0x0
    80002b2c:	fa0080e7          	jalr	-96(ra) # 80002ac8 <_Z5splitPvmmb>
}
    80002b30:	02813083          	ld	ra,40(sp)
    80002b34:	02013403          	ld	s0,32(sp)
    80002b38:	01813483          	ld	s1,24(sp)
    80002b3c:	01013903          	ld	s2,16(sp)
    80002b40:	00813983          	ld	s3,8(sp)
    80002b44:	03010113          	addi	sp,sp,48
    80002b48:	00008067          	ret
        addBlockToLevel(addr, currLevel);
    80002b4c:	00060593          	mv	a1,a2
    80002b50:	00000097          	auipc	ra,0x0
    80002b54:	ecc080e7          	jalr	-308(ra) # 80002a1c <_Z15addBlockToLevelPvm>
    80002b58:	fd9ff06f          	j	80002b30 <_Z5splitPvmmb+0x68>

0000000080002b5c <_Z11buddy_allocm>:
{
    80002b5c:	fe010113          	addi	sp,sp,-32
    80002b60:	00113c23          	sd	ra,24(sp)
    80002b64:	00813823          	sd	s0,16(sp)
    80002b68:	00913423          	sd	s1,8(sp)
    80002b6c:	01213023          	sd	s2,0(sp)
    80002b70:	02010413          	addi	s0,sp,32
    size_t level = getDeg2Ceil(numOfBlocks);
    80002b74:	00000097          	auipc	ra,0x0
    80002b78:	e74080e7          	jalr	-396(ra) # 800029e8 <_Z11getDeg2Ceilm>
    80002b7c:	00050913          	mv	s2,a0
    for(size_t i = level; i <= buddy->maxLevel;i++)
    80002b80:	00050613          	mv	a2,a0
    80002b84:	00006717          	auipc	a4,0x6
    80002b88:	e4c73703          	ld	a4,-436(a4) # 800089d0 <_ZL5buddy>
    80002b8c:	01873783          	ld	a5,24(a4)
    80002b90:	08c7e063          	bltu	a5,a2,80002c10 <_Z11buddy_allocm+0xb4>
        if(buddy->bucket[i].first != nullptr)
    80002b94:	00260793          	addi	a5,a2,2
    80002b98:	00479793          	slli	a5,a5,0x4
    80002b9c:	00f707b3          	add	a5,a4,a5
    80002ba0:	0007b483          	ld	s1,0(a5)
    80002ba4:	00049663          	bnez	s1,80002bb0 <_Z11buddy_allocm+0x54>
    for(size_t i = level; i <= buddy->maxLevel;i++)
    80002ba8:	00160613          	addi	a2,a2,1
    80002bac:	fd9ff06f          	j	80002b84 <_Z11buddy_allocm+0x28>
            buddy->bucket[i].first = ret->next;
    80002bb0:	0004b683          	ld	a3,0(s1)
    80002bb4:	00260793          	addi	a5,a2,2
    80002bb8:	00479793          	slli	a5,a5,0x4
    80002bbc:	00f707b3          	add	a5,a4,a5
    80002bc0:	00d7b023          	sd	a3,0(a5)
            if(buddy->bucket[i].first == nullptr)
    80002bc4:	02068c63          	beqz	a3,80002bfc <_Z11buddy_allocm+0xa0>
            split((void*)ret, level, i, true);
    80002bc8:	00100693          	li	a3,1
    80002bcc:	00090593          	mv	a1,s2
    80002bd0:	00048513          	mv	a0,s1
    80002bd4:	00000097          	auipc	ra,0x0
    80002bd8:	ef4080e7          	jalr	-268(ra) # 80002ac8 <_Z5splitPvmmb>
            buddy->numOfFreeBlocks-= (1 << level);
    80002bdc:	00006797          	auipc	a5,0x6
    80002be0:	df47b783          	ld	a5,-524(a5) # 800089d0 <_ZL5buddy>
    80002be4:	00100513          	li	a0,1
    80002be8:	0125153b          	sllw	a0,a0,s2
    80002bec:	0107b903          	ld	s2,16(a5)
    80002bf0:	40a90933          	sub	s2,s2,a0
    80002bf4:	0127b823          	sd	s2,16(a5)
            return ret;
    80002bf8:	01c0006f          	j	80002c14 <_Z11buddy_allocm+0xb8>
                buddy->bucket[i].last = nullptr;
    80002bfc:	00260793          	addi	a5,a2,2
    80002c00:	00479793          	slli	a5,a5,0x4
    80002c04:	00f70733          	add	a4,a4,a5
    80002c08:	00073423          	sd	zero,8(a4)
    80002c0c:	fbdff06f          	j	80002bc8 <_Z11buddy_allocm+0x6c>
    return nullptr;
    80002c10:	00000493          	li	s1,0
}
    80002c14:	00048513          	mv	a0,s1
    80002c18:	01813083          	ld	ra,24(sp)
    80002c1c:	01013403          	ld	s0,16(sp)
    80002c20:	00813483          	ld	s1,8(sp)
    80002c24:	00013903          	ld	s2,0(sp)
    80002c28:	02010113          	addi	sp,sp,32
    80002c2c:	00008067          	ret

0000000080002c30 <_Z9addBlocksPvm>:
{
    80002c30:	fd010113          	addi	sp,sp,-48
    80002c34:	02113423          	sd	ra,40(sp)
    80002c38:	02813023          	sd	s0,32(sp)
    80002c3c:	00913c23          	sd	s1,24(sp)
    80002c40:	01213823          	sd	s2,16(sp)
    80002c44:	01313423          	sd	s3,8(sp)
    80002c48:	03010413          	addi	s0,sp,48
    80002c4c:	00050913          	mv	s2,a0
    80002c50:	00058493          	mv	s1,a1
    if(level == buddy->maxLevel)
    80002c54:	00006997          	auipc	s3,0x6
    80002c58:	d7c9b983          	ld	s3,-644(s3) # 800089d0 <_ZL5buddy>
    80002c5c:	0189b783          	ld	a5,24(s3)
    80002c60:	02b78a63          	beq	a5,a1,80002c94 <_Z9addBlocksPvm+0x64>
    size_t buddyBlockAddr = getBuddyBlockAddr(addr,level);
    80002c64:	00000097          	auipc	ra,0x0
    80002c68:	e20080e7          	jalr	-480(ra) # 80002a84 <_Z17getBuddyBlockAddrPvm>
    buddyBlock* curr = buddy->bucket[level].first;
    80002c6c:	00248793          	addi	a5,s1,2
    80002c70:	00479793          	slli	a5,a5,0x4
    80002c74:	00f987b3          	add	a5,s3,a5
    80002c78:	0007b783          	ld	a5,0(a5)
    buddyBlock* prev = nullptr;
    80002c7c:	00000713          	li	a4,0
    while(curr != nullptr)
    80002c80:	0a078863          	beqz	a5,80002d30 <_Z9addBlocksPvm+0x100>
        if((size_t)curr == buddyBlockAddr)
    80002c84:	00a78e63          	beq	a5,a0,80002ca0 <_Z9addBlocksPvm+0x70>
        prev = curr;
    80002c88:	00078713          	mv	a4,a5
        curr = curr->next;
    80002c8c:	0007b783          	ld	a5,0(a5)
    while(curr != nullptr)
    80002c90:	ff1ff06f          	j	80002c80 <_Z9addBlocksPvm+0x50>
        addBlockToLevel(addr, level);
    80002c94:	00000097          	auipc	ra,0x0
    80002c98:	d88080e7          	jalr	-632(ra) # 80002a1c <_Z15addBlockToLevelPvm>
        return;
    80002c9c:	0a40006f          	j	80002d40 <_Z9addBlocksPvm+0x110>
            if(prev != nullptr)
    80002ca0:	04070663          	beqz	a4,80002cec <_Z9addBlocksPvm+0xbc>
                prev->next = curr->next;
    80002ca4:	0007b683          	ld	a3,0(a5)
    80002ca8:	00d73023          	sd	a3,0(a4)
                if(curr == buddy->bucket[level].last)
    80002cac:	00248693          	addi	a3,s1,2
    80002cb0:	00469693          	slli	a3,a3,0x4
    80002cb4:	00d986b3          	add	a3,s3,a3
    80002cb8:	0086b683          	ld	a3,8(a3)
    80002cbc:	00f68e63          	beq	a3,a5,80002cd8 <_Z9addBlocksPvm+0xa8>
            if((size_t)addr < buddyBlockAddr) addBlocks(addr, level + 1); //merge two chunks
    80002cc0:	06a97063          	bgeu	s2,a0,80002d20 <_Z9addBlocksPvm+0xf0>
    80002cc4:	00148593          	addi	a1,s1,1
    80002cc8:	00090513          	mv	a0,s2
    80002ccc:	00000097          	auipc	ra,0x0
    80002cd0:	f64080e7          	jalr	-156(ra) # 80002c30 <_Z9addBlocksPvm>
    80002cd4:	06c0006f          	j	80002d40 <_Z9addBlocksPvm+0x110>
                    buddy->bucket[level].last = prev;
    80002cd8:	00248793          	addi	a5,s1,2
    80002cdc:	00479793          	slli	a5,a5,0x4
    80002ce0:	00f989b3          	add	s3,s3,a5
    80002ce4:	00e9b423          	sd	a4,8(s3)
    80002ce8:	fd9ff06f          	j	80002cc0 <_Z9addBlocksPvm+0x90>
                if(curr->next == nullptr)
    80002cec:	0007b783          	ld	a5,0(a5)
    80002cf0:	00078c63          	beqz	a5,80002d08 <_Z9addBlocksPvm+0xd8>
                    buddy->bucket[level].first = curr->next;
    80002cf4:	00248713          	addi	a4,s1,2
    80002cf8:	00471713          	slli	a4,a4,0x4
    80002cfc:	00e989b3          	add	s3,s3,a4
    80002d00:	00f9b023          	sd	a5,0(s3)
    80002d04:	fbdff06f          	j	80002cc0 <_Z9addBlocksPvm+0x90>
                    buddy->bucket[level].first = buddy->bucket[level].last = nullptr;
    80002d08:	00248793          	addi	a5,s1,2
    80002d0c:	00479793          	slli	a5,a5,0x4
    80002d10:	00f989b3          	add	s3,s3,a5
    80002d14:	0009b423          	sd	zero,8(s3)
    80002d18:	0009b023          	sd	zero,0(s3)
    80002d1c:	fa5ff06f          	j	80002cc0 <_Z9addBlocksPvm+0x90>
            else addBlocks((void*)buddyBlockAddr, level + 1); //merge two chunks
    80002d20:	00148593          	addi	a1,s1,1
    80002d24:	00000097          	auipc	ra,0x0
    80002d28:	f0c080e7          	jalr	-244(ra) # 80002c30 <_Z9addBlocksPvm>
            return;
    80002d2c:	0140006f          	j	80002d40 <_Z9addBlocksPvm+0x110>
    addBlockToLevel(addr, level);
    80002d30:	00048593          	mv	a1,s1
    80002d34:	00090513          	mv	a0,s2
    80002d38:	00000097          	auipc	ra,0x0
    80002d3c:	ce4080e7          	jalr	-796(ra) # 80002a1c <_Z15addBlockToLevelPvm>
}
    80002d40:	02813083          	ld	ra,40(sp)
    80002d44:	02013403          	ld	s0,32(sp)
    80002d48:	01813483          	ld	s1,24(sp)
    80002d4c:	01013903          	ld	s2,16(sp)
    80002d50:	00813983          	ld	s3,8(sp)
    80002d54:	03010113          	addi	sp,sp,48
    80002d58:	00008067          	ret

0000000080002d5c <_Z10buddy_initPvm>:
{
    80002d5c:	fd010113          	addi	sp,sp,-48
    80002d60:	02113423          	sd	ra,40(sp)
    80002d64:	02813023          	sd	s0,32(sp)
    80002d68:	00913c23          	sd	s1,24(sp)
    80002d6c:	01213823          	sd	s2,16(sp)
    80002d70:	01313423          	sd	s3,8(sp)
    80002d74:	03010413          	addi	s0,sp,48
    80002d78:	00058913          	mv	s2,a1
    size_t blockAddr = getBlockAddr((size_t)addr); //alling the address
    80002d7c:	00050993          	mv	s3,a0
    80002d80:	00000097          	auipc	ra,0x0
    80002d84:	be4080e7          	jalr	-1052(ra) # 80002964 <_Z12getBlockAddrm>
    if((size_t)addr != blockAddr) // if start address not aligned
    80002d88:	00a98a63          	beq	s3,a0,80002d9c <_Z10buddy_initPvm+0x40>
        buddyAddr = getNextBlockAddr(blockAddr);
    80002d8c:	00000097          	auipc	ra,0x0
    80002d90:	bf8080e7          	jalr	-1032(ra) # 80002984 <_Z16getNextBlockAddrm>
    80002d94:	00050993          	mv	s3,a0
        numOfBlocks--; //have to discard one block
    80002d98:	fff90913          	addi	s2,s2,-1
    numOfBlocks--; // take one block for buddy metadata
    80002d9c:	fff90913          	addi	s2,s2,-1
    buddy = (buddyAllocator*)buddyAddr;
    80002da0:	00098493          	mv	s1,s3
    80002da4:	00006797          	auipc	a5,0x6
    80002da8:	c337b623          	sd	s3,-980(a5) # 800089d0 <_ZL5buddy>
    buddy->startAddr = (void*)getNextBlockAddr(buddyAddr);
    80002dac:	00098513          	mv	a0,s3
    80002db0:	00000097          	auipc	ra,0x0
    80002db4:	bd4080e7          	jalr	-1068(ra) # 80002984 <_Z16getNextBlockAddrm>
    80002db8:	00a9b423          	sd	a0,8(s3)
    buddy->numOfBlocks = numOfBlocks;
    80002dbc:	0129b023          	sd	s2,0(s3)
    buddy->numOfFreeBlocks = numOfBlocks;
    80002dc0:	0129b823          	sd	s2,16(s3)
    buddy->maxLevel = getDeg2Floor(numOfBlocks);
    80002dc4:	00090513          	mv	a0,s2
    80002dc8:	00000097          	auipc	ra,0x0
    80002dcc:	bec080e7          	jalr	-1044(ra) # 800029b4 <_Z12getDeg2Floorm>
    80002dd0:	00a9bc23          	sd	a0,24(s3)
    for(size_t i = 0; i <= buddy->maxLevel;i++)
    80002dd4:	00000713          	li	a4,0
    80002dd8:	0184b783          	ld	a5,24(s1)
    80002ddc:	02e7e063          	bltu	a5,a4,80002dfc <_Z10buddy_initPvm+0xa0>
        buddy->bucket[i].first = buddy->bucket[i].last = nullptr;
    80002de0:	00270793          	addi	a5,a4,2
    80002de4:	00479793          	slli	a5,a5,0x4
    80002de8:	00f487b3          	add	a5,s1,a5
    80002dec:	0007b423          	sd	zero,8(a5)
    80002df0:	0007b023          	sd	zero,0(a5)
    for(size_t i = 0; i <= buddy->maxLevel;i++)
    80002df4:	00170713          	addi	a4,a4,1
    80002df8:	fe1ff06f          	j	80002dd8 <_Z10buddy_initPvm+0x7c>
    for(size_t i = 0;i < numOfBlocks;i++)
    80002dfc:	00000493          	li	s1,0
    80002e00:	0324f663          	bgeu	s1,s2,80002e2c <_Z10buddy_initPvm+0xd0>
        addBlocks((block*)buddy->startAddr + i, 0);
    80002e04:	00006797          	auipc	a5,0x6
    80002e08:	bcc7b783          	ld	a5,-1076(a5) # 800089d0 <_ZL5buddy>
    80002e0c:	0087b503          	ld	a0,8(a5)
    80002e10:	00c49793          	slli	a5,s1,0xc
    80002e14:	00000593          	li	a1,0
    80002e18:	00f50533          	add	a0,a0,a5
    80002e1c:	00000097          	auipc	ra,0x0
    80002e20:	e14080e7          	jalr	-492(ra) # 80002c30 <_Z9addBlocksPvm>
    for(size_t i = 0;i < numOfBlocks;i++)
    80002e24:	00148493          	addi	s1,s1,1
    80002e28:	fd9ff06f          	j	80002e00 <_Z10buddy_initPvm+0xa4>
}
    80002e2c:	00006517          	auipc	a0,0x6
    80002e30:	ba453503          	ld	a0,-1116(a0) # 800089d0 <_ZL5buddy>
    80002e34:	02813083          	ld	ra,40(sp)
    80002e38:	02013403          	ld	s0,32(sp)
    80002e3c:	01813483          	ld	s1,24(sp)
    80002e40:	01013903          	ld	s2,16(sp)
    80002e44:	00813983          	ld	s3,8(sp)
    80002e48:	03010113          	addi	sp,sp,48
    80002e4c:	00008067          	ret

0000000080002e50 <_Z10buddy_freePvm>:
{
    80002e50:	fe010113          	addi	sp,sp,-32
    80002e54:	00113c23          	sd	ra,24(sp)
    80002e58:	00813823          	sd	s0,16(sp)
    80002e5c:	00913423          	sd	s1,8(sp)
    80002e60:	01213023          	sd	s2,0(sp)
    80002e64:	02010413          	addi	s0,sp,32
    80002e68:	00050913          	mv	s2,a0
    size_t level = getDeg2Ceil(numOfBlocks);
    80002e6c:	00058513          	mv	a0,a1
    80002e70:	00000097          	auipc	ra,0x0
    80002e74:	b78080e7          	jalr	-1160(ra) # 800029e8 <_Z11getDeg2Ceilm>
    80002e78:	00050493          	mv	s1,a0
    addBlocks(addr, level); //adds free blocks
    80002e7c:	00050593          	mv	a1,a0
    80002e80:	00090513          	mv	a0,s2
    80002e84:	00000097          	auipc	ra,0x0
    80002e88:	dac080e7          	jalr	-596(ra) # 80002c30 <_Z9addBlocksPvm>
    buddy->numOfFreeBlocks += (1 << level);
    80002e8c:	00006797          	auipc	a5,0x6
    80002e90:	b447b783          	ld	a5,-1212(a5) # 800089d0 <_ZL5buddy>
    80002e94:	00100513          	li	a0,1
    80002e98:	0095153b          	sllw	a0,a0,s1
    80002e9c:	0107b483          	ld	s1,16(a5)
    80002ea0:	00a484b3          	add	s1,s1,a0
    80002ea4:	0097b823          	sd	s1,16(a5)
}
    80002ea8:	01813083          	ld	ra,24(sp)
    80002eac:	01013403          	ld	s0,16(sp)
    80002eb0:	00813483          	ld	s1,8(sp)
    80002eb4:	00013903          	ld	s2,0(sp)
    80002eb8:	02010113          	addi	sp,sp,32
    80002ebc:	00008067          	ret

0000000080002ec0 <_Z14printBuddyInfov>:

void printBuddyInfo()
{
    80002ec0:	fe010113          	addi	sp,sp,-32
    80002ec4:	00113c23          	sd	ra,24(sp)
    80002ec8:	00813823          	sd	s0,16(sp)
    80002ecc:	00913423          	sd	s1,8(sp)
    80002ed0:	01213023          	sd	s2,0(sp)
    80002ed4:	02010413          	addi	s0,sp,32
    KConsole::trapPrintString("Buddy info-------------------------------------------\n");
    80002ed8:	00005517          	auipc	a0,0x5
    80002edc:	37850513          	addi	a0,a0,888 # 80008250 <CONSOLE_STATUS+0x240>
    80002ee0:	00000097          	auipc	ra,0x0
    80002ee4:	5e4080e7          	jalr	1508(ra) # 800034c4 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintStringInt("Buddy starting address ", (size_t)buddy->startAddr, 16);
    80002ee8:	00006497          	auipc	s1,0x6
    80002eec:	ae848493          	addi	s1,s1,-1304 # 800089d0 <_ZL5buddy>
    80002ef0:	0004b783          	ld	a5,0(s1)
    80002ef4:	01000613          	li	a2,16
    80002ef8:	0087b583          	ld	a1,8(a5)
    80002efc:	00005517          	auipc	a0,0x5
    80002f00:	38c50513          	addi	a0,a0,908 # 80008288 <CONSOLE_STATUS+0x278>
    80002f04:	00000097          	auipc	ra,0x0
    80002f08:	698080e7          	jalr	1688(ra) # 8000359c <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Buddy number of blocks ", buddy->numOfBlocks);
    80002f0c:	0004b783          	ld	a5,0(s1)
    80002f10:	00a00613          	li	a2,10
    80002f14:	0007b583          	ld	a1,0(a5)
    80002f18:	00005517          	auipc	a0,0x5
    80002f1c:	38850513          	addi	a0,a0,904 # 800082a0 <CONSOLE_STATUS+0x290>
    80002f20:	00000097          	auipc	ra,0x0
    80002f24:	67c080e7          	jalr	1660(ra) # 8000359c <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Buddy number of free blocks ", buddy->numOfFreeBlocks);
    80002f28:	0004b783          	ld	a5,0(s1)
    80002f2c:	00a00613          	li	a2,10
    80002f30:	0107b583          	ld	a1,16(a5)
    80002f34:	00005517          	auipc	a0,0x5
    80002f38:	38450513          	addi	a0,a0,900 # 800082b8 <CONSOLE_STATUS+0x2a8>
    80002f3c:	00000097          	auipc	ra,0x0
    80002f40:	660080e7          	jalr	1632(ra) # 8000359c <_ZN8KConsole18trapPrintStringIntEPKcmi>
    for(int i = buddy->maxLevel;i>=0;i--)
    80002f44:	0004b783          	ld	a5,0(s1)
    80002f48:	0187a903          	lw	s2,24(a5)
    80002f4c:	0080006f          	j	80002f54 <_Z14printBuddyInfov+0x94>
    80002f50:	fff9091b          	addiw	s2,s2,-1
    80002f54:	06094a63          	bltz	s2,80002fc8 <_Z14printBuddyInfov+0x108>
    {
        KConsole::trapPrintStringInt("Level ",i);
    80002f58:	00a00613          	li	a2,10
    80002f5c:	00090593          	mv	a1,s2
    80002f60:	00005517          	auipc	a0,0x5
    80002f64:	37850513          	addi	a0,a0,888 # 800082d8 <CONSOLE_STATUS+0x2c8>
    80002f68:	00000097          	auipc	ra,0x0
    80002f6c:	634080e7          	jalr	1588(ra) # 8000359c <_ZN8KConsole18trapPrintStringIntEPKcmi>
        KConsole::trapPrintString("Free blocks on this level\n");
    80002f70:	00005517          	auipc	a0,0x5
    80002f74:	37050513          	addi	a0,a0,880 # 800082e0 <CONSOLE_STATUS+0x2d0>
    80002f78:	00000097          	auipc	ra,0x0
    80002f7c:	54c080e7          	jalr	1356(ra) # 800034c4 <_ZN8KConsole15trapPrintStringEPKc>
        buddyBlock* curr = buddy->bucket[i].first;
    80002f80:	00290793          	addi	a5,s2,2
    80002f84:	00479713          	slli	a4,a5,0x4
    80002f88:	00006797          	auipc	a5,0x6
    80002f8c:	a487b783          	ld	a5,-1464(a5) # 800089d0 <_ZL5buddy>
    80002f90:	00e787b3          	add	a5,a5,a4
    80002f94:	0007b483          	ld	s1,0(a5)
        while(curr != 0)
    80002f98:	fa048ce3          	beqz	s1,80002f50 <_Z14printBuddyInfov+0x90>
        {
            KConsole::trapPrintInt((size_t)curr, 16);
    80002f9c:	00000613          	li	a2,0
    80002fa0:	01000593          	li	a1,16
    80002fa4:	00048513          	mv	a0,s1
    80002fa8:	00000097          	auipc	ra,0x0
    80002fac:	560080e7          	jalr	1376(ra) # 80003508 <_ZN8KConsole12trapPrintIntEmii>
            KConsole::trapPrintString("\n");
    80002fb0:	00005517          	auipc	a0,0x5
    80002fb4:	1c850513          	addi	a0,a0,456 # 80008178 <CONSOLE_STATUS+0x168>
    80002fb8:	00000097          	auipc	ra,0x0
    80002fbc:	50c080e7          	jalr	1292(ra) # 800034c4 <_ZN8KConsole15trapPrintStringEPKc>
            curr = curr->next;
    80002fc0:	0004b483          	ld	s1,0(s1)
        while(curr != 0)
    80002fc4:	fd5ff06f          	j	80002f98 <_Z14printBuddyInfov+0xd8>
        }
    }
    KConsole::trapPrintString("End of buddy info-------------------------------------------\n");
    80002fc8:	00005517          	auipc	a0,0x5
    80002fcc:	33850513          	addi	a0,a0,824 # 80008300 <CONSOLE_STATUS+0x2f0>
    80002fd0:	00000097          	auipc	ra,0x0
    80002fd4:	4f4080e7          	jalr	1268(ra) # 800034c4 <_ZN8KConsole15trapPrintStringEPKc>
}
    80002fd8:	01813083          	ld	ra,24(sp)
    80002fdc:	01013403          	ld	s0,16(sp)
    80002fe0:	00813483          	ld	s1,8(sp)
    80002fe4:	00013903          	ld	s2,0(sp)
    80002fe8:	02010113          	addi	sp,sp,32
    80002fec:	00008067          	ret

0000000080002ff0 <_Z8getBuddyv>:

void* getBuddy()
{
    80002ff0:	ff010113          	addi	sp,sp,-16
    80002ff4:	00813423          	sd	s0,8(sp)
    80002ff8:	01010413          	addi	s0,sp,16
    return (void*)buddy;
    80002ffc:	00006517          	auipc	a0,0x6
    80003000:	9d453503          	ld	a0,-1580(a0) # 800089d0 <_ZL5buddy>
    80003004:	00813403          	ld	s0,8(sp)
    80003008:	01010113          	addi	sp,sp,16
    8000300c:	00008067          	ret

0000000080003010 <_ZN8KConsole10initializeEv>:
char KConsole::outputBuffer[bufferSize];
uint64 KConsole::pendingPutc = 0;
bool KConsole::finished = false;

void KConsole::initialize()
{
    80003010:	fe010113          	addi	sp,sp,-32
    80003014:	00113c23          	sd	ra,24(sp)
    80003018:	00813823          	sd	s0,16(sp)
    8000301c:	00913423          	sd	s1,8(sp)
    80003020:	01213023          	sd	s2,0(sp)
    80003024:	02010413          	addi	s0,sp,32
    hasCharactersInput = new KSemaphore(0);
    80003028:	01800513          	li	a0,24
    8000302c:	00002097          	auipc	ra,0x2
    80003030:	138080e7          	jalr	312(ra) # 80005164 <_ZN10KSemaphorenwEm>
    80003034:	00050493          	mv	s1,a0
    80003038:	00050863          	beqz	a0,80003048 <_ZN8KConsole10initializeEv+0x38>
    8000303c:	00000593          	li	a1,0
    80003040:	00002097          	auipc	ra,0x2
    80003044:	ec0080e7          	jalr	-320(ra) # 80004f00 <_ZN10KSemaphoreC1Ei>
    80003048:	00006797          	auipc	a5,0x6
    8000304c:	9897b823          	sd	s1,-1648(a5) # 800089d8 <_ZN8KConsole18hasCharactersInputE>
    hasCharactersOutput = new KSemaphore(0);
    80003050:	01800513          	li	a0,24
    80003054:	00002097          	auipc	ra,0x2
    80003058:	110080e7          	jalr	272(ra) # 80005164 <_ZN10KSemaphorenwEm>
    8000305c:	00050493          	mv	s1,a0
    80003060:	00050863          	beqz	a0,80003070 <_ZN8KConsole10initializeEv+0x60>
    80003064:	00000593          	li	a1,0
    80003068:	00002097          	auipc	ra,0x2
    8000306c:	e98080e7          	jalr	-360(ra) # 80004f00 <_ZN10KSemaphoreC1Ei>
    80003070:	00006797          	auipc	a5,0x6
    80003074:	9697b823          	sd	s1,-1680(a5) # 800089e0 <_ZN8KConsole19hasCharactersOutputE>
}
    80003078:	01813083          	ld	ra,24(sp)
    8000307c:	01013403          	ld	s0,16(sp)
    80003080:	00813483          	ld	s1,8(sp)
    80003084:	00013903          	ld	s2,0(sp)
    80003088:	02010113          	addi	sp,sp,32
    8000308c:	00008067          	ret
    80003090:	00050913          	mv	s2,a0
    hasCharactersInput = new KSemaphore(0);
    80003094:	00048513          	mv	a0,s1
    80003098:	00002097          	auipc	ra,0x2
    8000309c:	17c080e7          	jalr	380(ra) # 80005214 <_ZN10KSemaphoredlEPv>
    800030a0:	00090513          	mv	a0,s2
    800030a4:	0000f097          	auipc	ra,0xf
    800030a8:	aa4080e7          	jalr	-1372(ra) # 80011b48 <_Unwind_Resume>
    800030ac:	00050913          	mv	s2,a0
    hasCharactersOutput = new KSemaphore(0);
    800030b0:	00048513          	mv	a0,s1
    800030b4:	00002097          	auipc	ra,0x2
    800030b8:	160080e7          	jalr	352(ra) # 80005214 <_ZN10KSemaphoredlEPv>
    800030bc:	00090513          	mv	a0,s2
    800030c0:	0000f097          	auipc	ra,0xf
    800030c4:	a88080e7          	jalr	-1400(ra) # 80011b48 <_Unwind_Resume>

00000000800030c8 <_ZN8KConsole17putCharacterInputEc>:
    }
}

void KConsole::putCharacterInput(char c)
{
    if((inputTail+1)%bufferSize == inputHead)
    800030c8:	00006697          	auipc	a3,0x6
    800030cc:	91068693          	addi	a3,a3,-1776 # 800089d8 <_ZN8KConsole18hasCharactersInputE>
    800030d0:	0106b603          	ld	a2,16(a3)
    800030d4:	00160793          	addi	a5,a2,1
    800030d8:	00004737          	lui	a4,0x4
    800030dc:	fff70713          	addi	a4,a4,-1 # 3fff <_entry-0x7fffc001>
    800030e0:	00e7f7b3          	and	a5,a5,a4
    800030e4:	0186b703          	ld	a4,24(a3)
    800030e8:	04e78263          	beq	a5,a4,8000312c <_ZN8KConsole17putCharacterInputEc+0x64>
{
    800030ec:	ff010113          	addi	sp,sp,-16
    800030f0:	00113423          	sd	ra,8(sp)
    800030f4:	00813023          	sd	s0,0(sp)
    800030f8:	01010413          	addi	s0,sp,16
        return;
    inputBuffer[inputTail] = c;
    800030fc:	0000a717          	auipc	a4,0xa
    80003100:	92470713          	addi	a4,a4,-1756 # 8000ca20 <_ZN8KConsole11inputBufferE>
    80003104:	00c70633          	add	a2,a4,a2
    80003108:	00a60023          	sb	a0,0(a2)
    inputTail = (inputTail+1)%bufferSize;
    8000310c:	00f6b823          	sd	a5,16(a3)
    hasCharactersInput->signal();
    80003110:	0006b503          	ld	a0,0(a3)
    80003114:	00002097          	auipc	ra,0x2
    80003118:	008080e7          	jalr	8(ra) # 8000511c <_ZN10KSemaphore6signalEv>
}
    8000311c:	00813083          	ld	ra,8(sp)
    80003120:	00013403          	ld	s0,0(sp)
    80003124:	01010113          	addi	sp,sp,16
    80003128:	00008067          	ret
    8000312c:	00008067          	ret

0000000080003130 <_ZN8KConsole24getCharactersFromConsoleEv>:
    uint64 operation = *(uint8*)CONSOLE_STATUS;
    80003130:	00005797          	auipc	a5,0x5
    80003134:	7787b783          	ld	a5,1912(a5) # 800088a8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80003138:	0007b783          	ld	a5,0(a5)
    8000313c:	0007c783          	lbu	a5,0(a5)
    if(operation & KConsole::STATUS_READ_MASK)
    80003140:	0017f793          	andi	a5,a5,1
    80003144:	02078063          	beqz	a5,80003164 <_ZN8KConsole24getCharactersFromConsoleEv+0x34>
        char c = *(uint8*)CONSOLE_TX_DATA;
    80003148:	00005797          	auipc	a5,0x5
    8000314c:	7987b783          	ld	a5,1944(a5) # 800088e0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80003150:	0007b783          	ld	a5,0(a5)
    80003154:	0007c503          	lbu	a0,0(a5)
        if(KConsole::pendingGetc > 0)
    80003158:	00006797          	auipc	a5,0x6
    8000315c:	8a07b783          	ld	a5,-1888(a5) # 800089f8 <_ZN8KConsole11pendingGetcE>
    80003160:	00079463          	bnez	a5,80003168 <_ZN8KConsole24getCharactersFromConsoleEv+0x38>
    80003164:	00008067          	ret
{
    80003168:	ff010113          	addi	sp,sp,-16
    8000316c:	00113423          	sd	ra,8(sp)
    80003170:	00813023          	sd	s0,0(sp)
    80003174:	01010413          	addi	s0,sp,16
            KConsole::pendingGetc--;
    80003178:	fff78793          	addi	a5,a5,-1
    8000317c:	00006717          	auipc	a4,0x6
    80003180:	86f73e23          	sd	a5,-1924(a4) # 800089f8 <_ZN8KConsole11pendingGetcE>
            KConsole::putCharacterInput(c);
    80003184:	00000097          	auipc	ra,0x0
    80003188:	f44080e7          	jalr	-188(ra) # 800030c8 <_ZN8KConsole17putCharacterInputEc>
}
    8000318c:	00813083          	ld	ra,8(sp)
    80003190:	00013403          	ld	s0,0(sp)
    80003194:	01010113          	addi	sp,sp,16
    80003198:	00008067          	ret

000000008000319c <_ZN8KConsole17getCharacterInputEv>:

char KConsole::getCharacterInput()
{
    8000319c:	fe010113          	addi	sp,sp,-32
    800031a0:	00113c23          	sd	ra,24(sp)
    800031a4:	00813823          	sd	s0,16(sp)
    800031a8:	00913423          	sd	s1,8(sp)
    800031ac:	02010413          	addi	s0,sp,32
    hasCharactersInput->wait();
    800031b0:	00006497          	auipc	s1,0x6
    800031b4:	82848493          	addi	s1,s1,-2008 # 800089d8 <_ZN8KConsole18hasCharactersInputE>
    800031b8:	0004b503          	ld	a0,0(s1)
    800031bc:	00002097          	auipc	ra,0x2
    800031c0:	de8080e7          	jalr	-536(ra) # 80004fa4 <_ZN10KSemaphore4waitEv>
    if(inputHead == inputTail)
    800031c4:	0184b783          	ld	a5,24(s1)
    800031c8:	0104b703          	ld	a4,16(s1)
    800031cc:	04e78063          	beq	a5,a4,8000320c <_ZN8KConsole17getCharacterInputEv+0x70>
        return -1;
    char c = inputBuffer[inputHead];
    800031d0:	0000a717          	auipc	a4,0xa
    800031d4:	85070713          	addi	a4,a4,-1968 # 8000ca20 <_ZN8KConsole11inputBufferE>
    800031d8:	00f70733          	add	a4,a4,a5
    800031dc:	00074503          	lbu	a0,0(a4)
    inputHead = (inputHead+1)%bufferSize;
    800031e0:	00178793          	addi	a5,a5,1
    800031e4:	00004737          	lui	a4,0x4
    800031e8:	fff70713          	addi	a4,a4,-1 # 3fff <_entry-0x7fffc001>
    800031ec:	00e7f7b3          	and	a5,a5,a4
    800031f0:	00006717          	auipc	a4,0x6
    800031f4:	80f73023          	sd	a5,-2048(a4) # 800089f0 <_ZN8KConsole9inputHeadE>
    return c;
}
    800031f8:	01813083          	ld	ra,24(sp)
    800031fc:	01013403          	ld	s0,16(sp)
    80003200:	00813483          	ld	s1,8(sp)
    80003204:	02010113          	addi	sp,sp,32
    80003208:	00008067          	ret
        return -1;
    8000320c:	0ff00513          	li	a0,255
    80003210:	fe9ff06f          	j	800031f8 <_ZN8KConsole17getCharacterInputEv+0x5c>

0000000080003214 <_ZN8KConsole18putCharacterOutputEc>:

void KConsole::putCharacterOutput(char c)
{
    if((outputTail+1)%bufferSize == outputHead)
    80003214:	00005697          	auipc	a3,0x5
    80003218:	7c468693          	addi	a3,a3,1988 # 800089d8 <_ZN8KConsole18hasCharactersInputE>
    8000321c:	0286b603          	ld	a2,40(a3)
    80003220:	00160793          	addi	a5,a2,1
    80003224:	00004737          	lui	a4,0x4
    80003228:	fff70713          	addi	a4,a4,-1 # 3fff <_entry-0x7fffc001>
    8000322c:	00e7f7b3          	and	a5,a5,a4
    80003230:	0306b703          	ld	a4,48(a3)
    80003234:	04e78a63          	beq	a5,a4,80003288 <_ZN8KConsole18putCharacterOutputEc+0x74>
{
    80003238:	ff010113          	addi	sp,sp,-16
    8000323c:	00113423          	sd	ra,8(sp)
    80003240:	00813023          	sd	s0,0(sp)
    80003244:	01010413          	addi	s0,sp,16
        return;
    pendingPutc++;
    80003248:	00068713          	mv	a4,a3
    8000324c:	0386b683          	ld	a3,56(a3)
    80003250:	00168693          	addi	a3,a3,1
    80003254:	02d73c23          	sd	a3,56(a4)
    outputBuffer[outputTail] = c;
    80003258:	00005697          	auipc	a3,0x5
    8000325c:	7c868693          	addi	a3,a3,1992 # 80008a20 <_ZN8KConsole12outputBufferE>
    80003260:	00c68633          	add	a2,a3,a2
    80003264:	00a60023          	sb	a0,0(a2)
    outputTail = (outputTail+1)%bufferSize;
    80003268:	02f73423          	sd	a5,40(a4)
    hasCharactersOutput->signal();
    8000326c:	00873503          	ld	a0,8(a4)
    80003270:	00002097          	auipc	ra,0x2
    80003274:	eac080e7          	jalr	-340(ra) # 8000511c <_ZN10KSemaphore6signalEv>
}
    80003278:	00813083          	ld	ra,8(sp)
    8000327c:	00013403          	ld	s0,0(sp)
    80003280:	01010113          	addi	sp,sp,16
    80003284:	00008067          	ret
    80003288:	00008067          	ret

000000008000328c <_ZN8KConsole18getCharacterOutputEv>:

char KConsole::getCharacterOutput()
{
    8000328c:	fe010113          	addi	sp,sp,-32
    80003290:	00113c23          	sd	ra,24(sp)
    80003294:	00813823          	sd	s0,16(sp)
    80003298:	00913423          	sd	s1,8(sp)
    8000329c:	02010413          	addi	s0,sp,32
    hasCharactersOutput->wait();
    800032a0:	00005497          	auipc	s1,0x5
    800032a4:	73848493          	addi	s1,s1,1848 # 800089d8 <_ZN8KConsole18hasCharactersInputE>
    800032a8:	0084b503          	ld	a0,8(s1)
    800032ac:	00002097          	auipc	ra,0x2
    800032b0:	cf8080e7          	jalr	-776(ra) # 80004fa4 <_ZN10KSemaphore4waitEv>
    if(outputHead == outputTail)
    800032b4:	0304b783          	ld	a5,48(s1)
    800032b8:	0284b703          	ld	a4,40(s1)
    800032bc:	04e78063          	beq	a5,a4,800032fc <_ZN8KConsole18getCharacterOutputEv+0x70>
        return -1;
    char c = outputBuffer[outputHead];
    800032c0:	00005717          	auipc	a4,0x5
    800032c4:	76070713          	addi	a4,a4,1888 # 80008a20 <_ZN8KConsole12outputBufferE>
    800032c8:	00f70733          	add	a4,a4,a5
    800032cc:	00074503          	lbu	a0,0(a4)
    outputHead = (outputHead+1)%bufferSize;
    800032d0:	00178793          	addi	a5,a5,1
    800032d4:	00004737          	lui	a4,0x4
    800032d8:	fff70713          	addi	a4,a4,-1 # 3fff <_entry-0x7fffc001>
    800032dc:	00e7f7b3          	and	a5,a5,a4
    800032e0:	00005717          	auipc	a4,0x5
    800032e4:	72f73423          	sd	a5,1832(a4) # 80008a08 <_ZN8KConsole10outputHeadE>
    return c;
}
    800032e8:	01813083          	ld	ra,24(sp)
    800032ec:	01013403          	ld	s0,16(sp)
    800032f0:	00813483          	ld	s1,8(sp)
    800032f4:	02010113          	addi	sp,sp,32
    800032f8:	00008067          	ret
        return -1;
    800032fc:	0ff00513          	li	a0,255
    80003300:	fe9ff06f          	j	800032e8 <_ZN8KConsole18getCharacterOutputEv+0x5c>

0000000080003304 <_ZN8KConsole11putcHandlerEv>:

void KConsole::putcHandler()
{
    80003304:	ff010113          	addi	sp,sp,-16
    80003308:	00113423          	sd	ra,8(sp)
    8000330c:	00813023          	sd	s0,0(sp)
    80003310:	01010413          	addi	s0,sp,16
    uint64 ch;
    __asm__ volatile("mv %0, a1" : "=r"(ch));
    80003314:	00058513          	mv	a0,a1
    putCharacterOutput((char)ch);
    80003318:	0ff57513          	andi	a0,a0,255
    8000331c:	00000097          	auipc	ra,0x0
    80003320:	ef8080e7          	jalr	-264(ra) # 80003214 <_ZN8KConsole18putCharacterOutputEc>
}
    80003324:	00813083          	ld	ra,8(sp)
    80003328:	00013403          	ld	s0,0(sp)
    8000332c:	01010113          	addi	sp,sp,16
    80003330:	00008067          	ret

0000000080003334 <_ZN8KConsole11getcHandlerEv>:

void KConsole::getcHandler()
{
    80003334:	fe010113          	addi	sp,sp,-32
    80003338:	00113c23          	sd	ra,24(sp)
    8000333c:	00813823          	sd	s0,16(sp)
    80003340:	00913423          	sd	s1,8(sp)
    80003344:	02010413          	addi	s0,sp,32
    pendingGetc++;
    80003348:	00005717          	auipc	a4,0x5
    8000334c:	69070713          	addi	a4,a4,1680 # 800089d8 <_ZN8KConsole18hasCharactersInputE>
    80003350:	02073783          	ld	a5,32(a4)
    80003354:	00178793          	addi	a5,a5,1
    80003358:	02f73023          	sd	a5,32(a4)
    char ch;
    ch = getCharacterInput();
    8000335c:	00000097          	auipc	ra,0x0
    80003360:	e40080e7          	jalr	-448(ra) # 8000319c <_ZN8KConsole17getCharacterInputEv>
    80003364:	00050493          	mv	s1,a0
    if(ch!=0x01b)
    80003368:	01b00793          	li	a5,27
    8000336c:	02f51663          	bne	a0,a5,80003398 <_ZN8KConsole11getcHandlerEv+0x64>
        putCharacterOutput(ch);

    if(ch==13)
    80003370:	00d00793          	li	a5,13
    80003374:	02f48863          	beq	s1,a5,800033a4 <_ZN8KConsole11getcHandlerEv+0x70>
    {
        putCharacterOutput(13);
        putCharacterOutput(10);
    }

    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    80003378:	00048513          	mv	a0,s1
    Riscv::w_a0_sscratch();
    8000337c:	00001097          	auipc	ra,0x1
    80003380:	e5c080e7          	jalr	-420(ra) # 800041d8 <_ZN5Riscv13w_a0_sscratchEv>
}
    80003384:	01813083          	ld	ra,24(sp)
    80003388:	01013403          	ld	s0,16(sp)
    8000338c:	00813483          	ld	s1,8(sp)
    80003390:	02010113          	addi	sp,sp,32
    80003394:	00008067          	ret
        putCharacterOutput(ch);
    80003398:	00000097          	auipc	ra,0x0
    8000339c:	e7c080e7          	jalr	-388(ra) # 80003214 <_ZN8KConsole18putCharacterOutputEc>
    800033a0:	fd1ff06f          	j	80003370 <_ZN8KConsole11getcHandlerEv+0x3c>
        putCharacterOutput(13);
    800033a4:	00d00513          	li	a0,13
    800033a8:	00000097          	auipc	ra,0x0
    800033ac:	e6c080e7          	jalr	-404(ra) # 80003214 <_ZN8KConsole18putCharacterOutputEc>
        putCharacterOutput(10);
    800033b0:	00a00513          	li	a0,10
    800033b4:	00000097          	auipc	ra,0x0
    800033b8:	e60080e7          	jalr	-416(ra) # 80003214 <_ZN8KConsole18putCharacterOutputEc>
    800033bc:	fbdff06f          	j	80003378 <_ZN8KConsole11getcHandlerEv+0x44>

00000000800033c0 <_ZN8KConsole17outputBufferEmptyEv>:

bool KConsole::outputBufferEmpty()
{
    800033c0:	ff010113          	addi	sp,sp,-16
    800033c4:	00813423          	sd	s0,8(sp)
    800033c8:	01010413          	addi	s0,sp,16
    return pendingPutc == 0;
}
    800033cc:	00005517          	auipc	a0,0x5
    800033d0:	64453503          	ld	a0,1604(a0) # 80008a10 <_ZN8KConsole11pendingPutcE>
    800033d4:	00153513          	seqz	a0,a0
    800033d8:	00813403          	ld	s0,8(sp)
    800033dc:	01010113          	addi	sp,sp,16
    800033e0:	00008067          	ret

00000000800033e4 <_ZN8KConsole23sendCharactersToConsoleEPv>:
{
    800033e4:	fe010113          	addi	sp,sp,-32
    800033e8:	00113c23          	sd	ra,24(sp)
    800033ec:	00813823          	sd	s0,16(sp)
    800033f0:	02010413          	addi	s0,sp,32
    800033f4:	0180006f          	j	8000340c <_ZN8KConsole23sendCharactersToConsoleEPv+0x28>
                thread_exit_kernel();
    800033f8:	ffffe097          	auipc	ra,0xffffe
    800033fc:	e88080e7          	jalr	-376(ra) # 80001280 <_Z18thread_exit_kernelv>
    80003400:	0340006f          	j	80003434 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
                thread_dispatch_kernel();
    80003404:	ffffe097          	auipc	ra,0xffffe
    80003408:	e34080e7          	jalr	-460(ra) # 80001238 <_Z22thread_dispatch_kernelv>
            if(Riscv::finishSystem && KConsole::outputBufferEmpty() && pendingGetc == 0)
    8000340c:	00005797          	auipc	a5,0x5
    80003410:	5147b783          	ld	a5,1300(a5) # 80008920 <_GLOBAL_OFFSET_TABLE_+0x88>
    80003414:	0007c783          	lbu	a5,0(a5)
    80003418:	00078e63          	beqz	a5,80003434 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    8000341c:	00000097          	auipc	ra,0x0
    80003420:	fa4080e7          	jalr	-92(ra) # 800033c0 <_ZN8KConsole17outputBufferEmptyEv>
    80003424:	00050863          	beqz	a0,80003434 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    80003428:	00005797          	auipc	a5,0x5
    8000342c:	5d07b783          	ld	a5,1488(a5) # 800089f8 <_ZN8KConsole11pendingGetcE>
    80003430:	fc0784e3          	beqz	a5,800033f8 <_ZN8KConsole23sendCharactersToConsoleEPv+0x14>
            uint64 operation = *(uint8*)CONSOLE_STATUS;
    80003434:	00005797          	auipc	a5,0x5
    80003438:	4747b783          	ld	a5,1140(a5) # 800088a8 <_GLOBAL_OFFSET_TABLE_+0x10>
    8000343c:	0007b783          	ld	a5,0(a5)
    80003440:	0007c783          	lbu	a5,0(a5)
            if ((operation & STATUS_WRITE_MASK) && pendingPutc > 0)
    80003444:	0207f793          	andi	a5,a5,32
    80003448:	fa078ee3          	beqz	a5,80003404 <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
    8000344c:	00005797          	auipc	a5,0x5
    80003450:	5c47b783          	ld	a5,1476(a5) # 80008a10 <_ZN8KConsole11pendingPutcE>
    80003454:	fa0788e3          	beqz	a5,80003404 <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
                char volatile c = sysCallGetCharOutput();
    80003458:	ffffe097          	auipc	ra,0xffffe
    8000345c:	e00080e7          	jalr	-512(ra) # 80001258 <_Z20sysCallGetCharOutputv>
    80003460:	fea407a3          	sb	a0,-17(s0)
                pendingPutc--;
    80003464:	00005717          	auipc	a4,0x5
    80003468:	57470713          	addi	a4,a4,1396 # 800089d8 <_ZN8KConsole18hasCharactersInputE>
    8000346c:	03873783          	ld	a5,56(a4)
    80003470:	fff78793          	addi	a5,a5,-1
    80003474:	02f73c23          	sd	a5,56(a4)
                *(uint8*)CONSOLE_RX_DATA = c;
    80003478:	00005797          	auipc	a5,0x5
    8000347c:	4287b783          	ld	a5,1064(a5) # 800088a0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80003480:	0007b783          	ld	a5,0(a5)
    80003484:	fef44703          	lbu	a4,-17(s0)
    80003488:	00e78023          	sb	a4,0(a5)
    8000348c:	f81ff06f          	j	8000340c <_ZN8KConsole23sendCharactersToConsoleEPv+0x28>

0000000080003490 <_ZN8KConsole14getCharHandlerEv>:

void KConsole::getCharHandler()
{
    80003490:	ff010113          	addi	sp,sp,-16
    80003494:	00113423          	sd	ra,8(sp)
    80003498:	00813023          	sd	s0,0(sp)
    8000349c:	01010413          	addi	s0,sp,16
    char ch;
    ch = getCharacterOutput();
    800034a0:	00000097          	auipc	ra,0x0
    800034a4:	dec080e7          	jalr	-532(ra) # 8000328c <_ZN8KConsole18getCharacterOutputEv>
    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    800034a8:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    800034ac:	00001097          	auipc	ra,0x1
    800034b0:	d2c080e7          	jalr	-724(ra) # 800041d8 <_ZN5Riscv13w_a0_sscratchEv>
}
    800034b4:	00813083          	ld	ra,8(sp)
    800034b8:	00013403          	ld	s0,0(sp)
    800034bc:	01010113          	addi	sp,sp,16
    800034c0:	00008067          	ret

00000000800034c4 <_ZN8KConsole15trapPrintStringEPKc>:

void KConsole::trapPrintString(const char *string)
{
    800034c4:	fe010113          	addi	sp,sp,-32
    800034c8:	00113c23          	sd	ra,24(sp)
    800034cc:	00813823          	sd	s0,16(sp)
    800034d0:	00913423          	sd	s1,8(sp)
    800034d4:	02010413          	addi	s0,sp,32
    800034d8:	00050493          	mv	s1,a0
    while (*string != '\0')
    800034dc:	0004c503          	lbu	a0,0(s1)
    800034e0:	00050a63          	beqz	a0,800034f4 <_ZN8KConsole15trapPrintStringEPKc+0x30>
    {
        KConsole::putCharacterOutput(*string);
    800034e4:	00000097          	auipc	ra,0x0
    800034e8:	d30080e7          	jalr	-720(ra) # 80003214 <_ZN8KConsole18putCharacterOutputEc>
        string++;
    800034ec:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800034f0:	fedff06f          	j	800034dc <_ZN8KConsole15trapPrintStringEPKc+0x18>
    }
}
    800034f4:	01813083          	ld	ra,24(sp)
    800034f8:	01013403          	ld	s0,16(sp)
    800034fc:	00813483          	ld	s1,8(sp)
    80003500:	02010113          	addi	sp,sp,32
    80003504:	00008067          	ret

0000000080003508 <_ZN8KConsole12trapPrintIntEmii>:

void KConsole::trapPrintInt(size_t xx, int base, int sgn)
{
    80003508:	fb010113          	addi	sp,sp,-80
    8000350c:	04113423          	sd	ra,72(sp)
    80003510:	04813023          	sd	s0,64(sp)
    80003514:	02913c23          	sd	s1,56(sp)
    80003518:	05010413          	addi	s0,sp,80
    char digits[] = "0123456789ABCDEF";
    8000351c:	00005797          	auipc	a5,0x5
    80003520:	e2478793          	addi	a5,a5,-476 # 80008340 <CONSOLE_STATUS+0x330>
    80003524:	0007b703          	ld	a4,0(a5)
    80003528:	fce43423          	sd	a4,-56(s0)
    8000352c:	0087b703          	ld	a4,8(a5)
    80003530:	fce43823          	sd	a4,-48(s0)
    80003534:	0107c783          	lbu	a5,16(a5)
    80003538:	fcf40c23          	sb	a5,-40(s0)
        x = -xx;
    } else {
        x = xx;
    }

    i = 0;
    8000353c:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % base];
    80003540:	02b57733          	remu	a4,a0,a1
    80003544:	fe040693          	addi	a3,s0,-32
    80003548:	00e68733          	add	a4,a3,a4
    8000354c:	fe874703          	lbu	a4,-24(a4)
    80003550:	009687b3          	add	a5,a3,s1
    80003554:	0014849b          	addiw	s1,s1,1
    80003558:	fce78c23          	sb	a4,-40(a5)
    }while((x /= base) != 0);
    8000355c:	00050793          	mv	a5,a0
    80003560:	02b55533          	divu	a0,a0,a1
    80003564:	fcb7fee3          	bgeu	a5,a1,80003540 <_ZN8KConsole12trapPrintIntEmii+0x38>
    if(neg)
        buf[i++] = '-';

    while(--i >= 0)
    80003568:	fff4849b          	addiw	s1,s1,-1
    8000356c:	0004ce63          	bltz	s1,80003588 <_ZN8KConsole12trapPrintIntEmii+0x80>
        KConsole::putCharacterOutput(buf[i]);
    80003570:	fe040793          	addi	a5,s0,-32
    80003574:	009787b3          	add	a5,a5,s1
    80003578:	fd87c503          	lbu	a0,-40(a5)
    8000357c:	00000097          	auipc	ra,0x0
    80003580:	c98080e7          	jalr	-872(ra) # 80003214 <_ZN8KConsole18putCharacterOutputEc>
    80003584:	fe5ff06f          	j	80003568 <_ZN8KConsole12trapPrintIntEmii+0x60>
}
    80003588:	04813083          	ld	ra,72(sp)
    8000358c:	04013403          	ld	s0,64(sp)
    80003590:	03813483          	ld	s1,56(sp)
    80003594:	05010113          	addi	sp,sp,80
    80003598:	00008067          	ret

000000008000359c <_ZN8KConsole18trapPrintStringIntEPKcmi>:

void KConsole::trapPrintStringInt(const char *string, size_t xx, int base)
{
    8000359c:	fe010113          	addi	sp,sp,-32
    800035a0:	00113c23          	sd	ra,24(sp)
    800035a4:	00813823          	sd	s0,16(sp)
    800035a8:	00913423          	sd	s1,8(sp)
    800035ac:	01213023          	sd	s2,0(sp)
    800035b0:	02010413          	addi	s0,sp,32
    800035b4:	00058493          	mv	s1,a1
    800035b8:	00060913          	mv	s2,a2
    trapPrintString(string);
    800035bc:	00000097          	auipc	ra,0x0
    800035c0:	f08080e7          	jalr	-248(ra) # 800034c4 <_ZN8KConsole15trapPrintStringEPKc>
    trapPrintInt(xx,base);
    800035c4:	00000613          	li	a2,0
    800035c8:	00090593          	mv	a1,s2
    800035cc:	00048513          	mv	a0,s1
    800035d0:	00000097          	auipc	ra,0x0
    800035d4:	f38080e7          	jalr	-200(ra) # 80003508 <_ZN8KConsole12trapPrintIntEmii>
    trapPrintString("\n");
    800035d8:	00005517          	auipc	a0,0x5
    800035dc:	ba050513          	addi	a0,a0,-1120 # 80008178 <CONSOLE_STATUS+0x168>
    800035e0:	00000097          	auipc	ra,0x0
    800035e4:	ee4080e7          	jalr	-284(ra) # 800034c4 <_ZN8KConsole15trapPrintStringEPKc>
}
    800035e8:	01813083          	ld	ra,24(sp)
    800035ec:	01013403          	ld	s0,16(sp)
    800035f0:	00813483          	ld	s1,8(sp)
    800035f4:	00013903          	ld	s2,0(sp)
    800035f8:	02010113          	addi	sp,sp,32
    800035fc:	00008067          	ret

0000000080003600 <_ZN12SleepPCBList17insertSleepingPCBEv>:
#include "../../h/Riscv.hpp"

PCB* SleepPCBList::sleepingPCBHead = 0;

void SleepPCBList::insertSleepingPCB()
{
    80003600:	ff010113          	addi	sp,sp,-16
    80003604:	00813423          	sd	s0,8(sp)
    80003608:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SLEEPING);
    8000360c:	00005797          	auipc	a5,0x5
    80003610:	3247b783          	ld	a5,804(a5) # 80008930 <_GLOBAL_OFFSET_TABLE_+0x98>
    80003614:	0007b603          	ld	a2,0(a5)
    void setState(State s) {state = s;}
    80003618:	00500793          	li	a5,5
    8000361c:	04f62023          	sw	a5,64(a2)
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    80003620:	0000d797          	auipc	a5,0xd
    80003624:	4007b783          	ld	a5,1024(a5) # 80010a20 <_ZN12SleepPCBList15sleepingPCBHeadE>
    PCB* prev = 0;
    80003628:	00000593          	li	a1,0
    while(curr != 0)
    8000362c:	02078063          	beqz	a5,8000364c <_ZN12SleepPCBList17insertSleepingPCBEv+0x4c>
    uint64 getTimeToSleep() {return timeToSleep;}
    80003630:	02063683          	ld	a3,32(a2)
    80003634:	0207b703          	ld	a4,32(a5)
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    80003638:	00e6e863          	bltu	a3,a4,80003648 <_ZN12SleepPCBList17insertSleepingPCBEv+0x48>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    8000363c:	00078593          	mv	a1,a5
        curr=curr->nextPCB;
    80003640:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003644:	fe9ff06f          	j	8000362c <_ZN12SleepPCBList17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    80003648:	00f63423          	sd	a5,8(a2)
    }

    if(prev == 0)
    8000364c:	00058a63          	beqz	a1,80003660 <_ZN12SleepPCBList17insertSleepingPCBEv+0x60>
        sleepingPCBHead = PCB::running;
    else
        prev->nextPCB = PCB::running;
    80003650:	00c5b423          	sd	a2,8(a1)
}
    80003654:	00813403          	ld	s0,8(sp)
    80003658:	01010113          	addi	sp,sp,16
    8000365c:	00008067          	ret
        sleepingPCBHead = PCB::running;
    80003660:	0000d797          	auipc	a5,0xd
    80003664:	3cc7b023          	sd	a2,960(a5) # 80010a20 <_ZN12SleepPCBList15sleepingPCBHeadE>
    80003668:	fedff06f          	j	80003654 <_ZN12SleepPCBList17insertSleepingPCBEv+0x54>

000000008000366c <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    PCB* curr = sleepingPCBHead;
    8000366c:	0000d517          	auipc	a0,0xd
    80003670:	3b453503          	ld	a0,948(a0) # 80010a20 <_ZN12SleepPCBList15sleepingPCBHeadE>
    if(curr == 0)
    80003674:	06050e63          	beqz	a0,800036f0 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
        return;

    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    80003678:	06050c63          	beqz	a0,800036f0 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    8000367c:	02053783          	ld	a5,32(a0)
    80003680:	00005717          	auipc	a4,0x5
    80003684:	27873703          	ld	a4,632(a4) # 800088f8 <_GLOBAL_OFFSET_TABLE_+0x60>
    80003688:	00073703          	ld	a4,0(a4)
    8000368c:	06f76263          	bltu	a4,a5,800036f0 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
{
    80003690:	fe010113          	addi	sp,sp,-32
    80003694:	00113c23          	sd	ra,24(sp)
    80003698:	00813823          	sd	s0,16(sp)
    8000369c:	00913423          	sd	s1,8(sp)
    800036a0:	02010413          	addi	s0,sp,32
    800036a4:	0180006f          	j	800036bc <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    800036a8:	0204b783          	ld	a5,32(s1)
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    800036ac:	00005717          	auipc	a4,0x5
    800036b0:	24c73703          	ld	a4,588(a4) # 800088f8 <_GLOBAL_OFFSET_TABLE_+0x60>
    800036b4:	00073703          	ld	a4,0(a4)
    800036b8:	02f76263          	bltu	a4,a5,800036dc <_ZN12SleepPCBList13tryToWakePCBsEv+0x70>
    {
        PCB *old = curr;
        curr = curr->nextPCB;
    800036bc:	00853483          	ld	s1,8(a0)
        old->nextPCB = 0;
    800036c0:	00053423          	sd	zero,8(a0)
        Scheduler::put(old);
    800036c4:	00000097          	auipc	ra,0x0
    800036c8:	0b8080e7          	jalr	184(ra) # 8000377c <_ZN9Scheduler3putEP3PCB>
        sleepingPCBHead = curr;
    800036cc:	0000d797          	auipc	a5,0xd
    800036d0:	3497ba23          	sd	s1,852(a5) # 80010a20 <_ZN12SleepPCBList15sleepingPCBHeadE>
        curr = curr->nextPCB;
    800036d4:	00048513          	mv	a0,s1
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    800036d8:	fc0498e3          	bnez	s1,800036a8 <_ZN12SleepPCBList13tryToWakePCBsEv+0x3c>
    }
}
    800036dc:	01813083          	ld	ra,24(sp)
    800036e0:	01013403          	ld	s0,16(sp)
    800036e4:	00813483          	ld	s1,8(sp)
    800036e8:	02010113          	addi	sp,sp,32
    800036ec:	00008067          	ret
    800036f0:	00008067          	ret

00000000800036f4 <_ZN9SchedulernwEm>:

PCB* Scheduler::schedulerPCBHead = 0;
PCB* Scheduler::schedulerPCBTail = 0;

void *Scheduler::operator new(size_t size)
{
    800036f4:	ff010113          	addi	sp,sp,-16
    800036f8:	00113423          	sd	ra,8(sp)
    800036fc:	00813023          	sd	s0,0(sp)
    80003700:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    80003704:	00001097          	auipc	ra,0x1
    80003708:	208080e7          	jalr	520(ra) # 8000490c <_ZN15MemoryAllocator7kmallocEm>
}
    8000370c:	00813083          	ld	ra,8(sp)
    80003710:	00013403          	ld	s0,0(sp)
    80003714:	01010113          	addi	sp,sp,16
    80003718:	00008067          	ret

000000008000371c <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p)
{
    8000371c:	ff010113          	addi	sp,sp,-16
    80003720:	00113423          	sd	ra,8(sp)
    80003724:	00813023          	sd	s0,0(sp)
    80003728:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    8000372c:	00001097          	auipc	ra,0x1
    80003730:	250080e7          	jalr	592(ra) # 8000497c <_ZN15MemoryAllocator5kfreeEPv>
}
    80003734:	00813083          	ld	ra,8(sp)
    80003738:	00013403          	ld	s0,0(sp)
    8000373c:	01010113          	addi	sp,sp,16
    80003740:	00008067          	ret

0000000080003744 <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize()
{
    80003744:	ff010113          	addi	sp,sp,-16
    80003748:	00813423          	sd	s0,8(sp)
    8000374c:	01010413          	addi	s0,sp,16
    uint64 sz = 0;
    PCB* curr = schedulerPCBHead;
    80003750:	0000d797          	auipc	a5,0xd
    80003754:	2d87b783          	ld	a5,728(a5) # 80010a28 <_ZN9Scheduler16schedulerPCBHeadE>
    uint64 sz = 0;
    80003758:	00000513          	li	a0,0
    while(curr != 0)
    8000375c:	00078863          	beqz	a5,8000376c <_ZN9Scheduler7getSizeEv+0x28>
    {
        sz++;
    80003760:	00150513          	addi	a0,a0,1
        curr = curr->nextPCB;
    80003764:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003768:	ff5ff06f          	j	8000375c <_ZN9Scheduler7getSizeEv+0x18>
    }
    return sz;
}
    8000376c:	0005051b          	sext.w	a0,a0
    80003770:	00813403          	ld	s0,8(sp)
    80003774:	01010113          	addi	sp,sp,16
    80003778:	00008067          	ret

000000008000377c <_ZN9Scheduler3putEP3PCB>:

void Scheduler::put(PCB *pcb)
{
    8000377c:	ff010113          	addi	sp,sp,-16
    80003780:	00813423          	sd	s0,8(sp)
    80003784:	01010413          	addi	s0,sp,16
    void setState(State s) {state = s;}
    80003788:	04052023          	sw	zero,64(a0)
    pcb->setState(PCB::READY);
    pcb->nextPCB = 0;
    8000378c:	00053423          	sd	zero,8(a0)
    if(schedulerPCBHead == 0)
    80003790:	0000d797          	auipc	a5,0xd
    80003794:	2987b783          	ld	a5,664(a5) # 80010a28 <_ZN9Scheduler16schedulerPCBHeadE>
    80003798:	02078263          	beqz	a5,800037bc <_ZN9Scheduler3putEP3PCB+0x40>
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    8000379c:	0000d797          	auipc	a5,0xd
    800037a0:	28c78793          	addi	a5,a5,652 # 80010a28 <_ZN9Scheduler16schedulerPCBHeadE>
    800037a4:	0087b703          	ld	a4,8(a5)
    800037a8:	00a73423          	sd	a0,8(a4)
        schedulerPCBTail = pcb;
    800037ac:	00a7b423          	sd	a0,8(a5)
    }
}
    800037b0:	00813403          	ld	s0,8(sp)
    800037b4:	01010113          	addi	sp,sp,16
    800037b8:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = pcb;
    800037bc:	0000d797          	auipc	a5,0xd
    800037c0:	26c78793          	addi	a5,a5,620 # 80010a28 <_ZN9Scheduler16schedulerPCBHeadE>
    800037c4:	00a7b423          	sd	a0,8(a5)
    800037c8:	00a7b023          	sd	a0,0(a5)
    800037cc:	fe5ff06f          	j	800037b0 <_ZN9Scheduler3putEP3PCB+0x34>

00000000800037d0 <_ZN9Scheduler3getEv>:

PCB *Scheduler::get()
{
    800037d0:	ff010113          	addi	sp,sp,-16
    800037d4:	00813423          	sd	s0,8(sp)
    800037d8:	01010413          	addi	s0,sp,16
    if(schedulerPCBHead == 0)
    800037dc:	0000d517          	auipc	a0,0xd
    800037e0:	24c53503          	ld	a0,588(a0) # 80010a28 <_ZN9Scheduler16schedulerPCBHeadE>
    800037e4:	00050c63          	beqz	a0,800037fc <_ZN9Scheduler3getEv+0x2c>
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
    800037e8:	00853783          	ld	a5,8(a0)
    800037ec:	00078e63          	beqz	a5,80003808 <_ZN9Scheduler3getEv+0x38>
        schedulerPCBHead = schedulerPCBTail = 0;
    else
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    800037f0:	0000d717          	auipc	a4,0xd
    800037f4:	22f73c23          	sd	a5,568(a4) # 80010a28 <_ZN9Scheduler16schedulerPCBHeadE>
    retval->nextPCB = 0;
    800037f8:	00053423          	sd	zero,8(a0)
    return retval;
}
    800037fc:	00813403          	ld	s0,8(sp)
    80003800:	01010113          	addi	sp,sp,16
    80003804:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    80003808:	0000d797          	auipc	a5,0xd
    8000380c:	22078793          	addi	a5,a5,544 # 80010a28 <_ZN9Scheduler16schedulerPCBHeadE>
    80003810:	0007b423          	sd	zero,8(a5)
    80003814:	0007b023          	sd	zero,0(a5)
    80003818:	fe1ff06f          	j	800037f8 <_ZN9Scheduler3getEv+0x28>

000000008000381c <_ZN9Scheduler5printEv>:

void Scheduler::print()
{
    8000381c:	fe010113          	addi	sp,sp,-32
    80003820:	00113c23          	sd	ra,24(sp)
    80003824:	00813823          	sd	s0,16(sp)
    80003828:	00913423          	sd	s1,8(sp)
    8000382c:	02010413          	addi	s0,sp,32
    //trapPrintString("Scheduler print\n");
    PCB* curr = schedulerPCBHead;
    80003830:	0000d497          	auipc	s1,0xd
    80003834:	1f84b483          	ld	s1,504(s1) # 80010a28 <_ZN9Scheduler16schedulerPCBHeadE>
    while(curr != 0)
    80003838:	02048863          	beqz	s1,80003868 <_ZN9Scheduler5printEv+0x4c>
    {
        KConsole::trapPrintInt((uint64)curr, 16);
    8000383c:	00000613          	li	a2,0
    80003840:	01000593          	li	a1,16
    80003844:	00048513          	mv	a0,s1
    80003848:	00000097          	auipc	ra,0x0
    8000384c:	cc0080e7          	jalr	-832(ra) # 80003508 <_ZN8KConsole12trapPrintIntEmii>
        KConsole::trapPrintString("\n");
    80003850:	00005517          	auipc	a0,0x5
    80003854:	92850513          	addi	a0,a0,-1752 # 80008178 <CONSOLE_STATUS+0x168>
    80003858:	00000097          	auipc	ra,0x0
    8000385c:	c6c080e7          	jalr	-916(ra) # 800034c4 <_ZN8KConsole15trapPrintStringEPKc>
        curr = curr->nextPCB;
    80003860:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003864:	fd5ff06f          	j	80003838 <_ZN9Scheduler5printEv+0x1c>
    }
}
    80003868:	01813083          	ld	ra,24(sp)
    8000386c:	01013403          	ld	s0,16(sp)
    80003870:	00813483          	ld	s1,8(sp)
    80003874:	02010113          	addi	sp,sp,32
    80003878:	00008067          	ret

000000008000387c <main>:
#include "../../h/Riscv.hpp"

void main()
{
    8000387c:	ff010113          	addi	sp,sp,-16
    80003880:	00113423          	sd	ra,8(sp)
    80003884:	00813023          	sd	s0,0(sp)
    80003888:	01010413          	addi	s0,sp,16
    Riscv::kernelMain();
    8000388c:	00001097          	auipc	ra,0x1
    80003890:	854080e7          	jalr	-1964(ra) # 800040e0 <_ZN5Riscv10kernelMainEv>
    80003894:	00813083          	ld	ra,8(sp)
    80003898:	00013403          	ld	s0,0(sp)
    8000389c:	01010113          	addi	sp,sp,16
    800038a0:	00008067          	ret

00000000800038a4 <_Z14buddyInitTest1v>:
#include "../../h/buddyTests.hpp"
#include "../../h/KConsole.hpp"
#include "../../h/MemoryAllocator.hpp"

void buddyInitTest1()
{
    800038a4:	ff010113          	addi	sp,sp,-16
    800038a8:	00113423          	sd	ra,8(sp)
    800038ac:	00813023          	sd	s0,0(sp)
    800038b0:	01010413          	addi	s0,sp,16
    printBuddyInfo();
    800038b4:	fffff097          	auipc	ra,0xfffff
    800038b8:	60c080e7          	jalr	1548(ra) # 80002ec0 <_Z14printBuddyInfov>
}
    800038bc:	00813083          	ld	ra,8(sp)
    800038c0:	00013403          	ld	s0,0(sp)
    800038c4:	01010113          	addi	sp,sp,16
    800038c8:	00008067          	ret

00000000800038cc <_Z20buddyOnlyAllocsTest1v>:

void buddyOnlyAllocsTest1()
{
    800038cc:	ff010113          	addi	sp,sp,-16
    800038d0:	00113423          	sd	ra,8(sp)
    800038d4:	00813023          	sd	s0,0(sp)
    800038d8:	01010413          	addi	s0,sp,16
    printBuddyInfo();
    800038dc:	fffff097          	auipc	ra,0xfffff
    800038e0:	5e4080e7          	jalr	1508(ra) # 80002ec0 <_Z14printBuddyInfov>
    buddy_alloc(1);
    800038e4:	00100513          	li	a0,1
    800038e8:	fffff097          	auipc	ra,0xfffff
    800038ec:	274080e7          	jalr	628(ra) # 80002b5c <_Z11buddy_allocm>
    printBuddyInfo();
    800038f0:	fffff097          	auipc	ra,0xfffff
    800038f4:	5d0080e7          	jalr	1488(ra) # 80002ec0 <_Z14printBuddyInfov>
    buddy_alloc(1);
    800038f8:	00100513          	li	a0,1
    800038fc:	fffff097          	auipc	ra,0xfffff
    80003900:	260080e7          	jalr	608(ra) # 80002b5c <_Z11buddy_allocm>
    printBuddyInfo();
    80003904:	fffff097          	auipc	ra,0xfffff
    80003908:	5bc080e7          	jalr	1468(ra) # 80002ec0 <_Z14printBuddyInfov>
    buddy_alloc(1);
    8000390c:	00100513          	li	a0,1
    80003910:	fffff097          	auipc	ra,0xfffff
    80003914:	24c080e7          	jalr	588(ra) # 80002b5c <_Z11buddy_allocm>
    printBuddyInfo();
    80003918:	fffff097          	auipc	ra,0xfffff
    8000391c:	5a8080e7          	jalr	1448(ra) # 80002ec0 <_Z14printBuddyInfov>
    buddy_alloc(3);
    80003920:	00300513          	li	a0,3
    80003924:	fffff097          	auipc	ra,0xfffff
    80003928:	238080e7          	jalr	568(ra) # 80002b5c <_Z11buddy_allocm>
    printBuddyInfo();
    8000392c:	fffff097          	auipc	ra,0xfffff
    80003930:	594080e7          	jalr	1428(ra) # 80002ec0 <_Z14printBuddyInfov>
}
    80003934:	00813083          	ld	ra,8(sp)
    80003938:	00013403          	ld	s0,0(sp)
    8000393c:	01010113          	addi	sp,sp,16
    80003940:	00008067          	ret

0000000080003944 <_Z20buddyOnlyAllocsTest2v>:

void buddyOnlyAllocsTest2()
{
    80003944:	ff010113          	addi	sp,sp,-16
    80003948:	00113423          	sd	ra,8(sp)
    8000394c:	00813023          	sd	s0,0(sp)
    80003950:	01010413          	addi	s0,sp,16
    void* adr = buddy_alloc(100);
    80003954:	06400513          	li	a0,100
    80003958:	fffff097          	auipc	ra,0xfffff
    8000395c:	204080e7          	jalr	516(ra) # 80002b5c <_Z11buddy_allocm>
    if(adr == nullptr)
    80003960:	00050a63          	beqz	a0,80003974 <_Z20buddyOnlyAllocsTest2v+0x30>
    {
        printBuddyInfo();
    }
}
    80003964:	00813083          	ld	ra,8(sp)
    80003968:	00013403          	ld	s0,0(sp)
    8000396c:	01010113          	addi	sp,sp,16
    80003970:	00008067          	ret
        printBuddyInfo();
    80003974:	fffff097          	auipc	ra,0xfffff
    80003978:	54c080e7          	jalr	1356(ra) # 80002ec0 <_Z14printBuddyInfov>
}
    8000397c:	fe9ff06f          	j	80003964 <_Z20buddyOnlyAllocsTest2v+0x20>

0000000080003980 <_Z19buddyAllocFreeTest1v>:

void buddyAllocFreeTest1()
{
    80003980:	fe010113          	addi	sp,sp,-32
    80003984:	00113c23          	sd	ra,24(sp)
    80003988:	00813823          	sd	s0,16(sp)
    8000398c:	00913423          	sd	s1,8(sp)
    80003990:	01213023          	sd	s2,0(sp)
    80003994:	02010413          	addi	s0,sp,32
    printBuddyInfo();
    80003998:	fffff097          	auipc	ra,0xfffff
    8000399c:	528080e7          	jalr	1320(ra) # 80002ec0 <_Z14printBuddyInfov>
    void* adr = buddy_alloc(1);
    800039a0:	00100513          	li	a0,1
    800039a4:	fffff097          	auipc	ra,0xfffff
    800039a8:	1b8080e7          	jalr	440(ra) # 80002b5c <_Z11buddy_allocm>
    800039ac:	00050493          	mv	s1,a0
    printBuddyInfo();
    800039b0:	fffff097          	auipc	ra,0xfffff
    800039b4:	510080e7          	jalr	1296(ra) # 80002ec0 <_Z14printBuddyInfov>
    buddy_free(adr, 1);
    800039b8:	00100593          	li	a1,1
    800039bc:	00048513          	mv	a0,s1
    800039c0:	fffff097          	auipc	ra,0xfffff
    800039c4:	490080e7          	jalr	1168(ra) # 80002e50 <_Z10buddy_freePvm>
    printBuddyInfo();
    800039c8:	fffff097          	auipc	ra,0xfffff
    800039cc:	4f8080e7          	jalr	1272(ra) # 80002ec0 <_Z14printBuddyInfov>

    adr = buddy_alloc(2);
    800039d0:	00200513          	li	a0,2
    800039d4:	fffff097          	auipc	ra,0xfffff
    800039d8:	188080e7          	jalr	392(ra) # 80002b5c <_Z11buddy_allocm>
    800039dc:	00050493          	mv	s1,a0
    void* adr2 = buddy_alloc(3);
    800039e0:	00300513          	li	a0,3
    800039e4:	fffff097          	auipc	ra,0xfffff
    800039e8:	178080e7          	jalr	376(ra) # 80002b5c <_Z11buddy_allocm>
    800039ec:	00050913          	mv	s2,a0
    printBuddyInfo();
    800039f0:	fffff097          	auipc	ra,0xfffff
    800039f4:	4d0080e7          	jalr	1232(ra) # 80002ec0 <_Z14printBuddyInfov>

    buddy_free(adr, 2);
    800039f8:	00200593          	li	a1,2
    800039fc:	00048513          	mv	a0,s1
    80003a00:	fffff097          	auipc	ra,0xfffff
    80003a04:	450080e7          	jalr	1104(ra) # 80002e50 <_Z10buddy_freePvm>
    printBuddyInfo();
    80003a08:	fffff097          	auipc	ra,0xfffff
    80003a0c:	4b8080e7          	jalr	1208(ra) # 80002ec0 <_Z14printBuddyInfov>
    adr = buddy_alloc(1);
    80003a10:	00100513          	li	a0,1
    80003a14:	fffff097          	auipc	ra,0xfffff
    80003a18:	148080e7          	jalr	328(ra) # 80002b5c <_Z11buddy_allocm>
    80003a1c:	00050493          	mv	s1,a0
    printBuddyInfo();
    80003a20:	fffff097          	auipc	ra,0xfffff
    80003a24:	4a0080e7          	jalr	1184(ra) # 80002ec0 <_Z14printBuddyInfov>

    buddy_free(adr2, 3);
    80003a28:	00300593          	li	a1,3
    80003a2c:	00090513          	mv	a0,s2
    80003a30:	fffff097          	auipc	ra,0xfffff
    80003a34:	420080e7          	jalr	1056(ra) # 80002e50 <_Z10buddy_freePvm>
    printBuddyInfo();
    80003a38:	fffff097          	auipc	ra,0xfffff
    80003a3c:	488080e7          	jalr	1160(ra) # 80002ec0 <_Z14printBuddyInfov>
    buddy_free(adr, 1);
    80003a40:	00100593          	li	a1,1
    80003a44:	00048513          	mv	a0,s1
    80003a48:	fffff097          	auipc	ra,0xfffff
    80003a4c:	408080e7          	jalr	1032(ra) # 80002e50 <_Z10buddy_freePvm>
    printBuddyInfo();
    80003a50:	fffff097          	auipc	ra,0xfffff
    80003a54:	470080e7          	jalr	1136(ra) # 80002ec0 <_Z14printBuddyInfov>
}
    80003a58:	01813083          	ld	ra,24(sp)
    80003a5c:	01013403          	ld	s0,16(sp)
    80003a60:	00813483          	ld	s1,8(sp)
    80003a64:	00013903          	ld	s2,0(sp)
    80003a68:	02010113          	addi	sp,sp,32
    80003a6c:	00008067          	ret

0000000080003a70 <_Z13buddyTestMixav>:

void buddyTestMixa()
{
    80003a70:	fd010113          	addi	sp,sp,-48
    80003a74:	02113423          	sd	ra,40(sp)
    80003a78:	02813023          	sd	s0,32(sp)
    80003a7c:	00913c23          	sd	s1,24(sp)
    80003a80:	01213823          	sd	s2,16(sp)
    80003a84:	01313423          	sd	s3,8(sp)
    80003a88:	01413023          	sd	s4,0(sp)
    80003a8c:	03010413          	addi	s0,sp,48
    void** x = (void**)MemoryAllocator::kmalloc(5000*sizeof(void*));
    80003a90:	0000a537          	lui	a0,0xa
    80003a94:	c4050513          	addi	a0,a0,-960 # 9c40 <_entry-0x7fff63c0>
    80003a98:	00001097          	auipc	ra,0x1
    80003a9c:	e74080e7          	jalr	-396(ra) # 8000490c <_ZN15MemoryAllocator7kmallocEm>
    80003aa0:	00050993          	mv	s3,a0
    printBuddyInfo();
    80003aa4:	fffff097          	auipc	ra,0xfffff
    80003aa8:	41c080e7          	jalr	1052(ra) # 80002ec0 <_Z14printBuddyInfov>
    for(int i = 0; i < 5000;i++)
    80003aac:	00000493          	li	s1,0
    80003ab0:	0080006f          	j	80003ab8 <_Z13buddyTestMixav+0x48>
    80003ab4:	0014849b          	addiw	s1,s1,1
    80003ab8:	000017b7          	lui	a5,0x1
    80003abc:	38778793          	addi	a5,a5,903 # 1387 <_entry-0x7fffec79>
    80003ac0:	0697c063          	blt	a5,s1,80003b20 <_Z13buddyTestMixav+0xb0>
    {
        x[i] = buddy_alloc(2);
    80003ac4:	00349913          	slli	s2,s1,0x3
    80003ac8:	01298933          	add	s2,s3,s2
    80003acc:	00200513          	li	a0,2
    80003ad0:	fffff097          	auipc	ra,0xfffff
    80003ad4:	08c080e7          	jalr	140(ra) # 80002b5c <_Z11buddy_allocm>
    80003ad8:	00a93023          	sd	a0,0(s2)
        if(x[i] == nullptr)
    80003adc:	fc051ce3          	bnez	a0,80003ab4 <_Z13buddyTestMixav+0x44>
        {
            KConsole::trapPrintStringInt("Bad allocation ", i);
    80003ae0:	00a00613          	li	a2,10
    80003ae4:	00048593          	mv	a1,s1
    80003ae8:	00005517          	auipc	a0,0x5
    80003aec:	87050513          	addi	a0,a0,-1936 # 80008358 <CONSOLE_STATUS+0x348>
    80003af0:	00000097          	auipc	ra,0x0
    80003af4:	aac080e7          	jalr	-1364(ra) # 8000359c <_ZN8KConsole18trapPrintStringIntEPKcmi>
            for(int j = 0;j < i;j++)
    80003af8:	00000913          	li	s2,0
    80003afc:	02995263          	bge	s2,s1,80003b20 <_Z13buddyTestMixav+0xb0>
            {
                buddy_free(x[j], 2);
    80003b00:	00391793          	slli	a5,s2,0x3
    80003b04:	00f987b3          	add	a5,s3,a5
    80003b08:	00200593          	li	a1,2
    80003b0c:	0007b503          	ld	a0,0(a5)
    80003b10:	fffff097          	auipc	ra,0xfffff
    80003b14:	340080e7          	jalr	832(ra) # 80002e50 <_Z10buddy_freePvm>
            for(int j = 0;j < i;j++)
    80003b18:	0019091b          	addiw	s2,s2,1
    80003b1c:	fe1ff06f          	j	80003afc <_Z13buddyTestMixav+0x8c>
            }
            break;
        }
    }
    printBuddyInfo();
    80003b20:	fffff097          	auipc	ra,0xfffff
    80003b24:	3a0080e7          	jalr	928(ra) # 80002ec0 <_Z14printBuddyInfov>
}
    80003b28:	02813083          	ld	ra,40(sp)
    80003b2c:	02013403          	ld	s0,32(sp)
    80003b30:	01813483          	ld	s1,24(sp)
    80003b34:	01013903          	ld	s2,16(sp)
    80003b38:	00813983          	ld	s3,8(sp)
    80003b3c:	00013a03          	ld	s4,0(sp)
    80003b40:	03010113          	addi	sp,sp,48
    80003b44:	00008067          	ret

0000000080003b48 <_ZN5Riscv17initVirtualMemoryEv>:
extern char *userDataStart;
extern char *kernelTextStart;
extern char *kernelDataStart;

void Riscv::initVirtualMemory()
{
    80003b48:	ff010113          	addi	sp,sp,-16
    80003b4c:	00813423          	sd	s0,8(sp)
    80003b50:	01010413          	addi	s0,sp,16
    //size_t addr = (size_t)getNextBlockAddr((size_t)HEAP_START_ADDR);

    //size_t pmtSize = (1 << 9);
    //size_t descSize = 64;
    //size_t
}
    80003b54:	00813403          	ld	s0,8(sp)
    80003b58:	01010113          	addi	sp,sp,16
    80003b5c:	00008067          	ret

0000000080003b60 <_ZN5Riscv16enableInterruptsEv>:
        thread_dispatch_kernel();
    }
    disableInterrupts();
}

void Riscv::enableInterrupts() {
    80003b60:	ff010113          	addi	sp,sp,-16
    80003b64:	00813423          	sd	s0,8(sp)
    80003b68:	01010413          	addi	s0,sp,16
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003b6c:	00200793          	li	a5,2
    80003b70:	1007a073          	csrs	sstatus,a5
    ms_sstatus(Riscv::SSTATUS_SIE);
}
    80003b74:	00813403          	ld	s0,8(sp)
    80003b78:	01010113          	addi	sp,sp,16
    80003b7c:	00008067          	ret

0000000080003b80 <_ZN5Riscv17disableInterruptsEv>:

void Riscv::disableInterrupts()
{
    80003b80:	ff010113          	addi	sp,sp,-16
    80003b84:	00813423          	sd	s0,8(sp)
    80003b88:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003b8c:	00200793          	li	a5,2
    80003b90:	1007b073          	csrc	sstatus,a5
    mc_sstatus(Riscv::SSTATUS_SIE);
}
    80003b94:	00813403          	ld	s0,8(sp)
    80003b98:	01010113          	addi	sp,sp,16
    80003b9c:	00008067          	ret

0000000080003ba0 <_ZN5Riscv9endSystemEv>:
{
    80003ba0:	ff010113          	addi	sp,sp,-16
    80003ba4:	00113423          	sd	ra,8(sp)
    80003ba8:	00813023          	sd	s0,0(sp)
    80003bac:	01010413          	addi	s0,sp,16
    disableInterrupts();
    80003bb0:	00000097          	auipc	ra,0x0
    80003bb4:	fd0080e7          	jalr	-48(ra) # 80003b80 <_ZN5Riscv17disableInterruptsEv>
    finishSystem = true;
    80003bb8:	00100793          	li	a5,1
    80003bbc:	0000d717          	auipc	a4,0xd
    80003bc0:	e6f70e23          	sb	a5,-388(a4) # 80010a38 <_ZN5Riscv12finishSystemE>
        pcb = Scheduler::get();
    80003bc4:	00000097          	auipc	ra,0x0
    80003bc8:	c0c080e7          	jalr	-1012(ra) # 800037d0 <_ZN9Scheduler3getEv>
        if(pcb == 0) break;
    80003bcc:	fe051ce3          	bnez	a0,80003bc4 <_ZN5Riscv9endSystemEv+0x24>
    Scheduler::put(PCB::consolePCB);
    80003bd0:	00005797          	auipc	a5,0x5
    80003bd4:	d407b783          	ld	a5,-704(a5) # 80008910 <_GLOBAL_OFFSET_TABLE_+0x78>
    80003bd8:	0007b503          	ld	a0,0(a5)
    80003bdc:	00000097          	auipc	ra,0x0
    80003be0:	ba0080e7          	jalr	-1120(ra) # 8000377c <_ZN9Scheduler3putEP3PCB>
    KConsole::pendingGetc = 0;
    80003be4:	00005797          	auipc	a5,0x5
    80003be8:	cf47b783          	ld	a5,-780(a5) # 800088d8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80003bec:	0007b023          	sd	zero,0(a5)
    enableInterrupts();
    80003bf0:	00000097          	auipc	ra,0x0
    80003bf4:	f70080e7          	jalr	-144(ra) # 80003b60 <_ZN5Riscv16enableInterruptsEv>
    while(!PCB::consolePCB->isFinished())
    80003bf8:	00005797          	auipc	a5,0x5
    80003bfc:	d187b783          	ld	a5,-744(a5) # 80008910 <_GLOBAL_OFFSET_TABLE_+0x78>
    80003c00:	0007b503          	ld	a0,0(a5)
    80003c04:	fffff097          	auipc	ra,0xfffff
    80003c08:	a80080e7          	jalr	-1408(ra) # 80002684 <_ZN3PCB10isFinishedEv>
    80003c0c:	00051863          	bnez	a0,80003c1c <_ZN5Riscv9endSystemEv+0x7c>
        thread_dispatch_kernel();
    80003c10:	ffffd097          	auipc	ra,0xffffd
    80003c14:	628080e7          	jalr	1576(ra) # 80001238 <_Z22thread_dispatch_kernelv>
    while(!PCB::consolePCB->isFinished())
    80003c18:	fe1ff06f          	j	80003bf8 <_ZN5Riscv9endSystemEv+0x58>
    disableInterrupts();
    80003c1c:	00000097          	auipc	ra,0x0
    80003c20:	f64080e7          	jalr	-156(ra) # 80003b80 <_ZN5Riscv17disableInterruptsEv>
}
    80003c24:	00813083          	ld	ra,8(sp)
    80003c28:	00013403          	ld	s0,0(sp)
    80003c2c:	01010113          	addi	sp,sp,16
    80003c30:	00008067          	ret

0000000080003c34 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie()
{
    80003c34:	ff010113          	addi	sp,sp,-16
    80003c38:	00813423          	sd	s0,8(sp)
    80003c3c:	01010413          	addi	s0,sp,16
    if(PCB::running->systemThread) {
    80003c40:	00005797          	auipc	a5,0x5
    80003c44:	cf07b783          	ld	a5,-784(a5) # 80008930 <_GLOBAL_OFFSET_TABLE_+0x98>
    80003c48:	0007b783          	ld	a5,0(a5)
    80003c4c:	0007c703          	lbu	a4,0(a5)
    80003c50:	00070c63          	beqz	a4,80003c68 <_ZN5Riscv10popSppSpieEv+0x34>
        __asm__ volatile ("csrw sepc, ra");
    80003c54:	14109073          	csrw	sepc,ra
        __asm__ volatile ("sret");
    80003c58:	10200073          	sret
        __asm__ volatile("mv a0, %0"::"r"((size_t)PCB::running->body));
        __asm__ volatile("mv a1, %0"::"r"((size_t)PCB::running->args));
        __asm__ volatile("csrw sepc, %0"::"r"(ra));
        __asm__ volatile ("sret");
    }
}
    80003c5c:	00813403          	ld	s0,8(sp)
    80003c60:	01010113          	addi	sp,sp,16
    80003c64:	00008067          	ret
        __asm__ volatile("mv a0, %0"::"r"((size_t)PCB::running->body));
    80003c68:	0287b703          	ld	a4,40(a5)
    80003c6c:	00070513          	mv	a0,a4
        __asm__ volatile("mv a1, %0"::"r"((size_t)PCB::running->args));
    80003c70:	0307b783          	ld	a5,48(a5)
    80003c74:	00078593          	mv	a1,a5
        __asm__ volatile("csrw sepc, %0"::"r"(ra));
    80003c78:	00005797          	auipc	a5,0x5
    80003c7c:	cd07b783          	ld	a5,-816(a5) # 80008948 <_GLOBAL_OFFSET_TABLE_+0xb0>
    80003c80:	14179073          	csrw	sepc,a5
        __asm__ volatile ("sret");
    80003c84:	10200073          	sret
}
    80003c88:	fd5ff06f          	j	80003c5c <_ZN5Riscv10popSppSpieEv+0x28>

0000000080003c8c <_ZN5Riscv14setVirtualAddrEmmm>:

void Riscv::setVirtualAddr(size_t addr, size_t mask, size_t maskLeaf)
{
    80003c8c:	fb010113          	addi	sp,sp,-80
    80003c90:	04113423          	sd	ra,72(sp)
    80003c94:	04813023          	sd	s0,64(sp)
    80003c98:	02913c23          	sd	s1,56(sp)
    80003c9c:	03213823          	sd	s2,48(sp)
    80003ca0:	03313423          	sd	s3,40(sp)
    80003ca4:	03413023          	sd	s4,32(sp)
    80003ca8:	01513c23          	sd	s5,24(sp)
    80003cac:	01613823          	sd	s6,16(sp)
    80003cb0:	01713423          	sd	s7,8(sp)
    80003cb4:	05010413          	addi	s0,sp,80
    80003cb8:	00058993          	mv	s3,a1
    80003cbc:	00060a13          	mv	s4,a2
    size_t l2 = addr >> 30;
    80003cc0:	01e55b93          	srli	s7,a0,0x1e
    size_t l1 = (addr >> 21) & (0x1ff);
    80003cc4:	01555b13          	srli	s6,a0,0x15
    80003cc8:	1ffb7b13          	andi	s6,s6,511
    size_t l0 = (addr >> 12) & (0x1ff);
    80003ccc:	00c55493          	srli	s1,a0,0xc
    80003cd0:	1ff4f913          	andi	s2,s1,511
    size_t pmt2Desc = ((size_t*)mainPMT)[l2];
    80003cd4:	003b9b93          	slli	s7,s7,0x3
    80003cd8:	0000d797          	auipc	a5,0xd
    80003cdc:	d687b783          	ld	a5,-664(a5) # 80010a40 <_ZN5Riscv7mainPMTE>
    80003ce0:	017787b3          	add	a5,a5,s7
    80003ce4:	0007b503          	ld	a0,0(a5)
    void* pmt1 = nullptr;
    if(pmt2Desc == 0)
    80003ce8:	06050663          	beqz	a0,80003d54 <_ZN5Riscv14setVirtualAddrEmmm+0xc8>
        size_t newDesc = (((size_t)pmt1 >> 12) << 10) | mask;
        ((size_t*)mainPMT)[l2] = newDesc;
    }
    else
    {
        pmt1 = (void*)((pmt2Desc >> 10) << 12);
    80003cec:	00a55513          	srli	a0,a0,0xa
    80003cf0:	00c51513          	slli	a0,a0,0xc
    }
    size_t pmt1Desc = ((size_t*)pmt1)[l1];
    80003cf4:	003b1a93          	slli	s5,s6,0x3
    80003cf8:	01550ab3          	add	s5,a0,s5
    80003cfc:	000ab503          	ld	a0,0(s5)
    void* pmt0 = nullptr;
    if(pmt1Desc == 0)
    80003d00:	0a050063          	beqz	a0,80003da0 <_ZN5Riscv14setVirtualAddrEmmm+0x114>
        size_t newDesc = (((size_t)pmt0 >> 12) << 10) | mask;
        ((size_t*)pmt1)[l1] = newDesc;
    }
    else
    {
        pmt0 = (void*)((pmt1Desc >> 10) << 12);
    80003d04:	00a55513          	srli	a0,a0,0xa
    80003d08:	00c51513          	slli	a0,a0,0xc
    }

    size_t pmt0Desc = ((size_t*)pmt0)[l0];
    80003d0c:	00391913          	slli	s2,s2,0x3
    80003d10:	01250533          	add	a0,a0,s2
    80003d14:	00053783          	ld	a5,0(a0)
    if(pmt0Desc == 0)
    80003d18:	00079863          	bnez	a5,80003d28 <_ZN5Riscv14setVirtualAddrEmmm+0x9c>
    {
        ((size_t*)pmt0)[l0] = ((addr >> 12) << 10) | maskLeaf;
    80003d1c:	00a49493          	slli	s1,s1,0xa
    80003d20:	0144ea33          	or	s4,s1,s4
    80003d24:	01453023          	sd	s4,0(a0)
    }
}
    80003d28:	04813083          	ld	ra,72(sp)
    80003d2c:	04013403          	ld	s0,64(sp)
    80003d30:	03813483          	ld	s1,56(sp)
    80003d34:	03013903          	ld	s2,48(sp)
    80003d38:	02813983          	ld	s3,40(sp)
    80003d3c:	02013a03          	ld	s4,32(sp)
    80003d40:	01813a83          	ld	s5,24(sp)
    80003d44:	01013b03          	ld	s6,16(sp)
    80003d48:	00813b83          	ld	s7,8(sp)
    80003d4c:	05010113          	addi	sp,sp,80
    80003d50:	00008067          	ret
        pmt1 = buddy_alloc(1);
    80003d54:	00100513          	li	a0,1
    80003d58:	fffff097          	auipc	ra,0xfffff
    80003d5c:	e04080e7          	jalr	-508(ra) # 80002b5c <_Z11buddy_allocm>
        for(int i = 0; i < NUM_OF_ENTRIES;i++)
    80003d60:	00000793          	li	a5,0
    80003d64:	1ff00713          	li	a4,511
    80003d68:	00f74c63          	blt	a4,a5,80003d80 <_ZN5Riscv14setVirtualAddrEmmm+0xf4>
            ((size_t*)pmt1)[i] = 0;
    80003d6c:	00379713          	slli	a4,a5,0x3
    80003d70:	00e50733          	add	a4,a0,a4
    80003d74:	00073023          	sd	zero,0(a4)
        for(int i = 0; i < NUM_OF_ENTRIES;i++)
    80003d78:	0017879b          	addiw	a5,a5,1
    80003d7c:	fe9ff06f          	j	80003d64 <_ZN5Riscv14setVirtualAddrEmmm+0xd8>
        size_t newDesc = (((size_t)pmt1 >> 12) << 10) | mask;
    80003d80:	00c55793          	srli	a5,a0,0xc
    80003d84:	00a79793          	slli	a5,a5,0xa
    80003d88:	0137e7b3          	or	a5,a5,s3
        ((size_t*)mainPMT)[l2] = newDesc;
    80003d8c:	0000d717          	auipc	a4,0xd
    80003d90:	cb473703          	ld	a4,-844(a4) # 80010a40 <_ZN5Riscv7mainPMTE>
    80003d94:	01770bb3          	add	s7,a4,s7
    80003d98:	00fbb023          	sd	a5,0(s7)
    80003d9c:	f59ff06f          	j	80003cf4 <_ZN5Riscv14setVirtualAddrEmmm+0x68>
        pmt0 = buddy_alloc(1);
    80003da0:	00100513          	li	a0,1
    80003da4:	fffff097          	auipc	ra,0xfffff
    80003da8:	db8080e7          	jalr	-584(ra) # 80002b5c <_Z11buddy_allocm>
        for(int i = 0; i < NUM_OF_ENTRIES;i++)
    80003dac:	00000793          	li	a5,0
    80003db0:	1ff00713          	li	a4,511
    80003db4:	00f74c63          	blt	a4,a5,80003dcc <_ZN5Riscv14setVirtualAddrEmmm+0x140>
            ((size_t*)pmt0)[i] = 0;
    80003db8:	00379713          	slli	a4,a5,0x3
    80003dbc:	00e50733          	add	a4,a0,a4
    80003dc0:	00073023          	sd	zero,0(a4)
        for(int i = 0; i < NUM_OF_ENTRIES;i++)
    80003dc4:	0017879b          	addiw	a5,a5,1
    80003dc8:	fe9ff06f          	j	80003db0 <_ZN5Riscv14setVirtualAddrEmmm+0x124>
        size_t newDesc = (((size_t)pmt0 >> 12) << 10) | mask;
    80003dcc:	00c55793          	srli	a5,a0,0xc
    80003dd0:	00a79793          	slli	a5,a5,0xa
    80003dd4:	0137e9b3          	or	s3,a5,s3
        ((size_t*)pmt1)[l1] = newDesc;
    80003dd8:	013ab023          	sd	s3,0(s5)
    80003ddc:	f31ff06f          	j	80003d0c <_ZN5Riscv14setVirtualAddrEmmm+0x80>

0000000080003de0 <_ZN5Riscv19setVirtualAddrRangeEmmi>:
{
    80003de0:	fd010113          	addi	sp,sp,-48
    80003de4:	02113423          	sd	ra,40(sp)
    80003de8:	02813023          	sd	s0,32(sp)
    80003dec:	00913c23          	sd	s1,24(sp)
    80003df0:	01213823          	sd	s2,16(sp)
    80003df4:	01313423          	sd	s3,8(sp)
    80003df8:	03010413          	addi	s0,sp,48
    80003dfc:	00050493          	mv	s1,a0
    80003e00:	00058913          	mv	s2,a1
    80003e04:	00060993          	mv	s3,a2
    for(size_t i = startAddr; i < endAddr; i+=BLOCK_NUM_OF_BYTES)
    80003e08:	0324f263          	bgeu	s1,s2,80003e2c <_ZN5Riscv19setVirtualAddrRangeEmmi+0x4c>
        setVirtualAddr(i, VMEM_V_BIT, permission);
    80003e0c:	00098613          	mv	a2,s3
    80003e10:	00100593          	li	a1,1
    80003e14:	00048513          	mv	a0,s1
    80003e18:	00000097          	auipc	ra,0x0
    80003e1c:	e74080e7          	jalr	-396(ra) # 80003c8c <_ZN5Riscv14setVirtualAddrEmmm>
    for(size_t i = startAddr; i < endAddr; i+=BLOCK_NUM_OF_BYTES)
    80003e20:	000017b7          	lui	a5,0x1
    80003e24:	00f484b3          	add	s1,s1,a5
    80003e28:	fe1ff06f          	j	80003e08 <_ZN5Riscv19setVirtualAddrRangeEmmi+0x28>
}
    80003e2c:	02813083          	ld	ra,40(sp)
    80003e30:	02013403          	ld	s0,32(sp)
    80003e34:	01813483          	ld	s1,24(sp)
    80003e38:	01013903          	ld	s2,16(sp)
    80003e3c:	00813983          	ld	s3,8(sp)
    80003e40:	03010113          	addi	sp,sp,48
    80003e44:	00008067          	ret

0000000080003e48 <_ZN5Riscv10initSystemEv>:
{
    80003e48:	fc010113          	addi	sp,sp,-64
    80003e4c:	02113c23          	sd	ra,56(sp)
    80003e50:	02813823          	sd	s0,48(sp)
    80003e54:	02913423          	sd	s1,40(sp)
    80003e58:	03213023          	sd	s2,32(sp)
    80003e5c:	01313c23          	sd	s3,24(sp)
    80003e60:	01413823          	sd	s4,16(sp)
    80003e64:	01513423          	sd	s5,8(sp)
    80003e68:	01613023          	sd	s6,0(sp)
    80003e6c:	04010413          	addi	s0,sp,64
    w_stvec((uint64)&Riscv::supervisorTrap);
    80003e70:	00005797          	auipc	a5,0x5
    80003e74:	a507b783          	ld	a5,-1456(a5) # 800088c0 <_GLOBAL_OFFSET_TABLE_+0x28>
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    80003e78:	10579073          	csrw	stvec,a5
    size_t heapStartBlock = getBlockAddr((size_t)HEAP_START_ADDR);
    80003e7c:	00005917          	auipc	s2,0x5
    80003e80:	a3493903          	ld	s2,-1484(s2) # 800088b0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003e84:	00093503          	ld	a0,0(s2)
    80003e88:	fffff097          	auipc	ra,0xfffff
    80003e8c:	adc080e7          	jalr	-1316(ra) # 80002964 <_Z12getBlockAddrm>
    void* newStartAddr = (void*)(heapStartBlock + numOfBlocks*BLOCK_NUM_OF_BYTES);
    80003e90:	010017b7          	lui	a5,0x1001
    80003e94:	00f504b3          	add	s1,a0,a5
    MemoryAllocator::initMemory(newStartAddr);
    80003e98:	00048513          	mv	a0,s1
    80003e9c:	00000097          	auipc	ra,0x0
    80003ea0:	680080e7          	jalr	1664(ra) # 8000451c <_ZN15MemoryAllocator10initMemoryEPv>
    kmem_init((void*)HEAP_START_ADDR, numOfBlocks);
    80003ea4:	000015b7          	lui	a1,0x1
    80003ea8:	00158593          	addi	a1,a1,1 # 1001 <_entry-0x7fffefff>
    80003eac:	00093503          	ld	a0,0(s2)
    80003eb0:	ffffe097          	auipc	ra,0xffffe
    80003eb4:	d58080e7          	jalr	-680(ra) # 80001c08 <_Z9kmem_initPvi>
    pcbCache = kmem_cache_create("Cache of PCBs", sizeof(PCB), nullptr, nullptr);
    80003eb8:	00000693          	li	a3,0
    80003ebc:	00000613          	li	a2,0
    80003ec0:	06000593          	li	a1,96
    80003ec4:	00004517          	auipc	a0,0x4
    80003ec8:	4a450513          	addi	a0,a0,1188 # 80008368 <CONSOLE_STATUS+0x358>
    80003ecc:	ffffe097          	auipc	ra,0xffffe
    80003ed0:	eac080e7          	jalr	-340(ra) # 80001d78 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80003ed4:	0000d917          	auipc	s2,0xd
    80003ed8:	b6490913          	addi	s2,s2,-1180 # 80010a38 <_ZN5Riscv12finishSystemE>
    80003edc:	00a93823          	sd	a0,16(s2)
    semaphoreCache = kmem_cache_create("Cache of KSemaphore", sizeof(KSemaphore), nullptr, nullptr);
    80003ee0:	00000693          	li	a3,0
    80003ee4:	00000613          	li	a2,0
    80003ee8:	01800593          	li	a1,24
    80003eec:	00004517          	auipc	a0,0x4
    80003ef0:	48c50513          	addi	a0,a0,1164 # 80008378 <CONSOLE_STATUS+0x368>
    80003ef4:	ffffe097          	auipc	ra,0xffffe
    80003ef8:	e84080e7          	jalr	-380(ra) # 80001d78 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80003efc:	00a93c23          	sd	a0,24(s2)
    PCB::initialize();
    80003f00:	ffffe097          	auipc	ra,0xffffe
    80003f04:	65c080e7          	jalr	1628(ra) # 8000255c <_ZN3PCB10initializeEv>
    KConsole::initialize();
    80003f08:	fffff097          	auipc	ra,0xfffff
    80003f0c:	108080e7          	jalr	264(ra) # 80003010 <_ZN8KConsole10initializeEv>
    mainPMT = buddy_alloc(1);
    80003f10:	00100513          	li	a0,1
    80003f14:	fffff097          	auipc	ra,0xfffff
    80003f18:	c48080e7          	jalr	-952(ra) # 80002b5c <_Z11buddy_allocm>
    80003f1c:	00a93423          	sd	a0,8(s2)
    for(size_t i = 0; i < NUM_OF_ENTRIES;i++)
    80003f20:	00000793          	li	a5,0
    80003f24:	1ff00713          	li	a4,511
    80003f28:	02f76063          	bltu	a4,a5,80003f48 <_ZN5Riscv10initSystemEv+0x100>
        ((size_t*)mainPMT)[i] = 0;
    80003f2c:	00379693          	slli	a3,a5,0x3
    80003f30:	0000d717          	auipc	a4,0xd
    80003f34:	b1073703          	ld	a4,-1264(a4) # 80010a40 <_ZN5Riscv7mainPMTE>
    80003f38:	00d70733          	add	a4,a4,a3
    80003f3c:	00073023          	sd	zero,0(a4)
    for(size_t i = 0; i < NUM_OF_ENTRIES;i++)
    80003f40:	00178793          	addi	a5,a5,1 # 1001001 <_entry-0x7effefff>
    80003f44:	fe1ff06f          	j	80003f24 <_ZN5Riscv10initSystemEv+0xdc>
    KConsole::trapPrintStringInt("main PMT ", (size_t)mainPMT,16);
    80003f48:	0000d917          	auipc	s2,0xd
    80003f4c:	af090913          	addi	s2,s2,-1296 # 80010a38 <_ZN5Riscv12finishSystemE>
    80003f50:	01000613          	li	a2,16
    80003f54:	00893583          	ld	a1,8(s2)
    80003f58:	00004517          	auipc	a0,0x4
    80003f5c:	43850513          	addi	a0,a0,1080 # 80008390 <CONSOLE_STATUS+0x380>
    80003f60:	fffff097          	auipc	ra,0xfffff
    80003f64:	63c080e7          	jalr	1596(ra) # 8000359c <_ZN8KConsole18trapPrintStringIntEPKcmi>
    uint64 kTextStart = (uint64)(&kernelTextStart);
    80003f68:	00005b17          	auipc	s6,0x5
    80003f6c:	960b3b03          	ld	s6,-1696(s6) # 800088c8 <_GLOBAL_OFFSET_TABLE_+0x30>
    uint64 kDataStart = (uint64)(&kernelDataStart);
    80003f70:	00005a97          	auipc	s5,0x5
    80003f74:	960aba83          	ld	s5,-1696(s5) # 800088d0 <_GLOBAL_OFFSET_TABLE_+0x38>
    uint64 uTextStart = (uint64)(&userTextStart);
    80003f78:	00005997          	auipc	s3,0x5
    80003f7c:	9b09b983          	ld	s3,-1616(s3) # 80008928 <_GLOBAL_OFFSET_TABLE_+0x90>
    uint64 uDataStart = (uint64)(&userDataStart);
    80003f80:	00005a17          	auipc	s4,0x5
    80003f84:	9d0a3a03          	ld	s4,-1584(s4) # 80008950 <_GLOBAL_OFFSET_TABLE_+0xb8>
    setVirtualAddrRange(programStartAddr, kTextStart, KERNEL_RX); // before kernel instructions
    80003f88:	00b00613          	li	a2,11
    80003f8c:	000b0593          	mv	a1,s6
    80003f90:	00005517          	auipc	a0,0x5
    80003f94:	8d853503          	ld	a0,-1832(a0) # 80008868 <_ZN5Riscv16programStartAddrE>
    80003f98:	00000097          	auipc	ra,0x0
    80003f9c:	e48080e7          	jalr	-440(ra) # 80003de0 <_ZN5Riscv19setVirtualAddrRangeEmmi>
    setVirtualAddrRange(kTextStart, kDataStart,KERNEL_RX); // kernel instructions
    80003fa0:	00b00613          	li	a2,11
    80003fa4:	000a8593          	mv	a1,s5
    80003fa8:	000b0513          	mv	a0,s6
    80003fac:	00000097          	auipc	ra,0x0
    80003fb0:	e34080e7          	jalr	-460(ra) # 80003de0 <_ZN5Riscv19setVirtualAddrRangeEmmi>
    setVirtualAddrRange((size_t)(&kernelDataStart), uTextStart, KERNEL_RW); // kernel data
    80003fb4:	00700613          	li	a2,7
    80003fb8:	00098593          	mv	a1,s3
    80003fbc:	000a8513          	mv	a0,s5
    80003fc0:	00000097          	auipc	ra,0x0
    80003fc4:	e20080e7          	jalr	-480(ra) # 80003de0 <_ZN5Riscv19setVirtualAddrRangeEmmi>
    setVirtualAddrRange((size_t)(&userTextStart), uDataStart, USER_RX); //user instructions
    80003fc8:	01b00613          	li	a2,27
    80003fcc:	000a0593          	mv	a1,s4
    80003fd0:	00098513          	mv	a0,s3
    80003fd4:	00000097          	auipc	ra,0x0
    80003fd8:	e0c080e7          	jalr	-500(ra) # 80003de0 <_ZN5Riscv19setVirtualAddrRangeEmmi>
    setVirtualAddrRange((size_t)(&userDataStart), (size_t)HEAP_START_ADDR, USER_RW); // user data
    80003fdc:	00005997          	auipc	s3,0x5
    80003fe0:	8d49b983          	ld	s3,-1836(s3) # 800088b0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003fe4:	01700613          	li	a2,23
    80003fe8:	0009b583          	ld	a1,0(s3)
    80003fec:	000a0513          	mv	a0,s4
    80003ff0:	00000097          	auipc	ra,0x0
    80003ff4:	df0080e7          	jalr	-528(ra) # 80003de0 <_ZN5Riscv19setVirtualAddrRangeEmmi>
    setVirtualAddrRange((size_t)HEAP_START_ADDR, (size_t)newStartAddr, KERNEL_RW); // kernel heap data
    80003ff8:	00700613          	li	a2,7
    80003ffc:	00048593          	mv	a1,s1
    80004000:	0009b503          	ld	a0,0(s3)
    80004004:	00000097          	auipc	ra,0x0
    80004008:	ddc080e7          	jalr	-548(ra) # 80003de0 <_ZN5Riscv19setVirtualAddrRangeEmmi>
    setVirtualAddrRange((size_t)newStartAddr, (size_t)HEAP_END_ADDR + 1,USER_RW); // user heap data
    8000400c:	00005797          	auipc	a5,0x5
    80004010:	92c7b783          	ld	a5,-1748(a5) # 80008938 <_GLOBAL_OFFSET_TABLE_+0xa0>
    80004014:	0007b583          	ld	a1,0(a5)
    80004018:	01700613          	li	a2,23
    8000401c:	00158593          	addi	a1,a1,1
    80004020:	00048513          	mv	a0,s1
    80004024:	00000097          	auipc	ra,0x0
    80004028:	dbc080e7          	jalr	-580(ra) # 80003de0 <_ZN5Riscv19setVirtualAddrRangeEmmi>
    setVirtualAddr((size_t)CONSOLE_RX_DATA,0x1,0xf);
    8000402c:	00f00613          	li	a2,15
    80004030:	00100593          	li	a1,1
    80004034:	00005797          	auipc	a5,0x5
    80004038:	86c7b783          	ld	a5,-1940(a5) # 800088a0 <_GLOBAL_OFFSET_TABLE_+0x8>
    8000403c:	0007b503          	ld	a0,0(a5)
    80004040:	00000097          	auipc	ra,0x0
    80004044:	c4c080e7          	jalr	-948(ra) # 80003c8c <_ZN5Riscv14setVirtualAddrEmmm>
    setVirtualAddr((size_t)CONSOLE_TX_DATA,0x1,0xf);
    80004048:	00f00613          	li	a2,15
    8000404c:	00100593          	li	a1,1
    80004050:	00005797          	auipc	a5,0x5
    80004054:	8907b783          	ld	a5,-1904(a5) # 800088e0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80004058:	0007b503          	ld	a0,0(a5)
    8000405c:	00000097          	auipc	ra,0x0
    80004060:	c30080e7          	jalr	-976(ra) # 80003c8c <_ZN5Riscv14setVirtualAddrEmmm>
    setVirtualAddr((size_t)CONSOLE_STATUS,0x1,0xf);
    80004064:	00f00613          	li	a2,15
    80004068:	00100593          	li	a1,1
    8000406c:	00005797          	auipc	a5,0x5
    80004070:	83c7b783          	ld	a5,-1988(a5) # 800088a8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80004074:	0007b503          	ld	a0,0(a5)
    80004078:	00000097          	auipc	ra,0x0
    8000407c:	c14080e7          	jalr	-1004(ra) # 80003c8c <_ZN5Riscv14setVirtualAddrEmmm>
    setVirtualAddr(0xc201004,0x1,0xf);
    80004080:	00f00613          	li	a2,15
    80004084:	00100593          	li	a1,1
    80004088:	0c201537          	lui	a0,0xc201
    8000408c:	00450513          	addi	a0,a0,4 # c201004 <_entry-0x73dfeffc>
    80004090:	00000097          	auipc	ra,0x0
    80004094:	bfc080e7          	jalr	-1028(ra) # 80003c8c <_ZN5Riscv14setVirtualAddrEmmm>
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80004098:	000407b7          	lui	a5,0x40
    8000409c:	1007a073          	csrs	sstatus,a5
    size_t satp = ((size_t)1 << 63) | ((size_t)mainPMT >> 12);
    800040a0:	00893783          	ld	a5,8(s2)
    800040a4:	00c7d793          	srli	a5,a5,0xc
    800040a8:	fff00713          	li	a4,-1
    800040ac:	03f71713          	slli	a4,a4,0x3f
    800040b0:	00e7e7b3          	or	a5,a5,a4
    __asm__ volatile("csrw satp, %0" : :"r"(satp));
    800040b4:	18079073          	csrw	satp,a5
}
    800040b8:	03813083          	ld	ra,56(sp)
    800040bc:	03013403          	ld	s0,48(sp)
    800040c0:	02813483          	ld	s1,40(sp)
    800040c4:	02013903          	ld	s2,32(sp)
    800040c8:	01813983          	ld	s3,24(sp)
    800040cc:	01013a03          	ld	s4,16(sp)
    800040d0:	00813a83          	ld	s5,8(sp)
    800040d4:	00013b03          	ld	s6,0(sp)
    800040d8:	04010113          	addi	sp,sp,64
    800040dc:	00008067          	ret

00000000800040e0 <_ZN5Riscv10kernelMainEv>:
    if(kernelMainCalled) return;
    800040e0:	0000d797          	auipc	a5,0xd
    800040e4:	9787c783          	lbu	a5,-1672(a5) # 80010a58 <_ZN5Riscv16kernelMainCalledE>
    800040e8:	00078463          	beqz	a5,800040f0 <_ZN5Riscv10kernelMainEv+0x10>
    800040ec:	00008067          	ret
{
    800040f0:	ff010113          	addi	sp,sp,-16
    800040f4:	00113423          	sd	ra,8(sp)
    800040f8:	00813023          	sd	s0,0(sp)
    800040fc:	01010413          	addi	s0,sp,16
    kernelMainCalled = true;
    80004100:	00100793          	li	a5,1
    80004104:	0000d717          	auipc	a4,0xd
    80004108:	94f70a23          	sb	a5,-1708(a4) # 80010a58 <_ZN5Riscv16kernelMainCalledE>
    initSystem();
    8000410c:	00000097          	auipc	ra,0x0
    80004110:	d3c080e7          	jalr	-708(ra) # 80003e48 <_ZN5Riscv10initSystemEv>
    enableInterrupts();
    80004114:	00000097          	auipc	ra,0x0
    80004118:	a4c080e7          	jalr	-1460(ra) # 80003b60 <_ZN5Riscv16enableInterruptsEv>
    while(!PCB::userPCB->isFinished())
    8000411c:	00004797          	auipc	a5,0x4
    80004120:	7fc7b783          	ld	a5,2044(a5) # 80008918 <_GLOBAL_OFFSET_TABLE_+0x80>
    80004124:	0007b503          	ld	a0,0(a5)
    80004128:	ffffe097          	auipc	ra,0xffffe
    8000412c:	55c080e7          	jalr	1372(ra) # 80002684 <_ZN3PCB10isFinishedEv>
    80004130:	00051863          	bnez	a0,80004140 <_ZN5Riscv10kernelMainEv+0x60>
        thread_dispatch_kernel();
    80004134:	ffffd097          	auipc	ra,0xffffd
    80004138:	104080e7          	jalr	260(ra) # 80001238 <_Z22thread_dispatch_kernelv>
    while(!PCB::userPCB->isFinished())
    8000413c:	fe1ff06f          	j	8000411c <_ZN5Riscv10kernelMainEv+0x3c>
    endSystem();
    80004140:	00000097          	auipc	ra,0x0
    80004144:	a60080e7          	jalr	-1440(ra) # 80003ba0 <_ZN5Riscv9endSystemEv>
}
    80004148:	00813083          	ld	ra,8(sp)
    8000414c:	00013403          	ld	s0,0(sp)
    80004150:	01010113          	addi	sp,sp,16
    80004154:	00008067          	ret

0000000080004158 <_ZN5Riscv14addVirtualAddrEm>:

void Riscv::addVirtualAddr(size_t addr)
{
    80004158:	ff010113          	addi	sp,sp,-16
    8000415c:	00113423          	sd	ra,8(sp)
    80004160:	00813023          	sd	s0,0(sp)
    80004164:	01010413          	addi	s0,sp,16
    setVirtualAddr(addr, 0x1, 0xf);
    80004168:	00f00613          	li	a2,15
    8000416c:	00100593          	li	a1,1
    80004170:	00000097          	auipc	ra,0x0
    80004174:	b1c080e7          	jalr	-1252(ra) # 80003c8c <_ZN5Riscv14setVirtualAddrEmmm>
}
    80004178:	00813083          	ld	ra,8(sp)
    8000417c:	00013403          	ld	s0,0(sp)
    80004180:	01010113          	addi	sp,sp,16
    80004184:	00008067          	ret

0000000080004188 <_ZN5Riscv19addVirtualAddrInstrEm>:

void Riscv::addVirtualAddrInstr(size_t addr)
{
    80004188:	ff010113          	addi	sp,sp,-16
    8000418c:	00113423          	sd	ra,8(sp)
    80004190:	00813023          	sd	s0,0(sp)
    80004194:	01010413          	addi	s0,sp,16
    setVirtualAddr(addr, 0x1, 0xf);
    80004198:	00f00613          	li	a2,15
    8000419c:	00100593          	li	a1,1
    800041a0:	00000097          	auipc	ra,0x0
    800041a4:	aec080e7          	jalr	-1300(ra) # 80003c8c <_ZN5Riscv14setVirtualAddrEmmm>
}
    800041a8:	00813083          	ld	ra,8(sp)
    800041ac:	00013403          	ld	s0,0(sp)
    800041b0:	01010113          	addi	sp,sp,16
    800041b4:	00008067          	ret

00000000800041b8 <_ZN5Riscv22disableTimerInterruptsEv>:

void Riscv::disableTimerInterrupts()
{
    800041b8:	ff010113          	addi	sp,sp,-16
    800041bc:	00813423          	sd	s0,8(sp)
    800041c0:	01010413          	addi	s0,sp,16
    uint64 x = 0x2;
    __asm__ volatile("csrc sie, %0"::"r"(x));
    800041c4:	00200793          	li	a5,2
    800041c8:	1047b073          	csrc	sie,a5
}
    800041cc:	00813403          	ld	s0,8(sp)
    800041d0:	01010113          	addi	sp,sp,16
    800041d4:	00008067          	ret

00000000800041d8 <_ZN5Riscv13w_a0_sscratchEv>:

void Riscv::w_a0_sscratch()
{
    800041d8:	ff010113          	addi	sp,sp,-16
    800041dc:	00813423          	sd	s0,8(sp)
    800041e0:	01010413          	addi	s0,sp,16
    uint64 a1Temp;
    __asm__ volatile("mv %0, a1":"=r"(a1Temp));
    800041e4:	00058793          	mv	a5,a1
    __asm__ volatile("mv a1, %0"::"r"(PCB::running->sscratch));
    800041e8:	00004717          	auipc	a4,0x4
    800041ec:	74873703          	ld	a4,1864(a4) # 80008930 <_GLOBAL_OFFSET_TABLE_+0x98>
    800041f0:	00073703          	ld	a4,0(a4)
    800041f4:	01073703          	ld	a4,16(a4)
    800041f8:	00070593          	mv	a1,a4
    __asm__ volatile("sd a0, 80(a1)");
    800041fc:	04a5b823          	sd	a0,80(a1)
    __asm__ volatile("mv a1,%0"::"r"(a1Temp));
    80004200:	00078593          	mv	a1,a5
}
    80004204:	00813403          	ld	s0,8(sp)
    80004208:	01010113          	addi	sp,sp,16
    8000420c:	00008067          	ret

0000000080004210 <_ZN5Riscv14changePrivModeEv>:

void Riscv::changePrivMode()
{
    80004210:	ff010113          	addi	sp,sp,-16
    80004214:	00813423          	sd	s0,8(sp)
    80004218:	01010413          	addi	s0,sp,16
    if(PCB::running->systemThread)
    8000421c:	00004797          	auipc	a5,0x4
    80004220:	7147b783          	ld	a5,1812(a5) # 80008930 <_GLOBAL_OFFSET_TABLE_+0x98>
    80004224:	0007b783          	ld	a5,0(a5)
    80004228:	0007c783          	lbu	a5,0(a5)
    8000422c:	00078c63          	beqz	a5,80004244 <_ZN5Riscv14changePrivModeEv+0x34>
    80004230:	10000793          	li	a5,256
    80004234:	1007a073          	csrs	sstatus,a5
        Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    else
        Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
}
    80004238:	00813403          	ld	s0,8(sp)
    8000423c:	01010113          	addi	sp,sp,16
    80004240:	00008067          	ret
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80004244:	10000793          	li	a5,256
    80004248:	1007b073          	csrc	sstatus,a5
    8000424c:	fedff06f          	j	80004238 <_ZN5Riscv14changePrivModeEv+0x28>

0000000080004250 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    80004250:	f9010113          	addi	sp,sp,-112
    80004254:	06113423          	sd	ra,104(sp)
    80004258:	06813023          	sd	s0,96(sp)
    8000425c:	04913c23          	sd	s1,88(sp)
    80004260:	07010413          	addi	s0,sp,112
    __asm__ volatile("mv %0, a4" : "=r"(PCB::savedRegA4));
    80004264:	00070713          	mv	a4,a4
    80004268:	00004797          	auipc	a5,0x4
    8000426c:	6f07b783          	ld	a5,1776(a5) # 80008958 <_GLOBAL_OFFSET_TABLE_+0xc0>
    80004270:	00e7b023          	sd	a4,0(a5)
    __asm__ volatile("csrr %0, sscratch":"=r"(PCB::running->sscratch));
    80004274:	00004797          	auipc	a5,0x4
    80004278:	6bc7b783          	ld	a5,1724(a5) # 80008930 <_GLOBAL_OFFSET_TABLE_+0x98>
    8000427c:	0007b783          	ld	a5,0(a5)
    80004280:	14002773          	csrr	a4,sscratch
    80004284:	00e7b823          	sd	a4,16(a5)
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80004288:	142027f3          	csrr	a5,scause
    8000428c:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80004290:	fb843783          	ld	a5,-72(s0)

    static const size_t storePF = 15;
    static const size_t loadPF = 13;
    static const size_t instrPF = 12;

    switch(scause)
    80004294:	00f00713          	li	a4,15
    80004298:	02f76863          	bltu	a4,a5,800042c8 <_ZN5Riscv20handleSupervisorTrapEv+0x78>
    8000429c:	00200713          	li	a4,2
    800042a0:	10e7e863          	bltu	a5,a4,800043b0 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
    800042a4:	00f00713          	li	a4,15
    800042a8:	10f76463          	bltu	a4,a5,800043b0 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
    800042ac:	00279793          	slli	a5,a5,0x2
    800042b0:	00004717          	auipc	a4,0x4
    800042b4:	0ec70713          	addi	a4,a4,236 # 8000839c <CONSOLE_STATUS+0x38c>
    800042b8:	00e787b3          	add	a5,a5,a4
    800042bc:	0007a783          	lw	a5,0(a5)
    800042c0:	00e787b3          	add	a5,a5,a4
    800042c4:	00078067          	jr	a5
    800042c8:	fff00713          	li	a4,-1
    800042cc:	03f71713          	slli	a4,a4,0x3f
    800042d0:	00170713          	addi	a4,a4,1
    800042d4:	04e78a63          	beq	a5,a4,80004328 <_ZN5Riscv20handleSupervisorTrapEv+0xd8>
    800042d8:	fff00713          	li	a4,-1
    800042dc:	03f71713          	slli	a4,a4,0x3f
    800042e0:	00970713          	addi	a4,a4,9
    800042e4:	0ce79663          	bne	a5,a4,800043b0 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
            changePrivMode();
            break;
        }
        case hwInterrupt:
        {
            KConsole::getCharactersFromConsole();
    800042e8:	fffff097          	auipc	ra,0xfffff
    800042ec:	e48080e7          	jalr	-440(ra) # 80003130 <_ZN8KConsole24getCharactersFromConsoleEv>
            plic_complete(plic_claim());
    800042f0:	00002097          	auipc	ra,0x2
    800042f4:	8a4080e7          	jalr	-1884(ra) # 80005b94 <plic_claim>
    800042f8:	00002097          	auipc	ra,0x2
    800042fc:	8d4080e7          	jalr	-1836(ra) # 80005bcc <plic_complete>
            break;
    80004300:	0b00006f          	j	800043b0 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
            PCB::threadExitHandler();
    80004304:	ffffe097          	auipc	ra,0xffffe
    80004308:	3a4080e7          	jalr	932(ra) # 800026a8 <_ZN3PCB17threadExitHandlerEv>
            break;
    8000430c:	0a40006f          	j	800043b0 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
            PCB::threadExitHandler();
    80004310:	ffffe097          	auipc	ra,0xffffe
    80004314:	398080e7          	jalr	920(ra) # 800026a8 <_ZN3PCB17threadExitHandlerEv>
            break;
    80004318:	0980006f          	j	800043b0 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
            PCB::threadExitHandler();
    8000431c:	ffffe097          	auipc	ra,0xffffe
    80004320:	38c080e7          	jalr	908(ra) # 800026a8 <_ZN3PCB17threadExitHandlerEv>
            break;
    80004324:	08c0006f          	j	800043b0 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80004328:	141027f3          	csrr	a5,sepc
    8000432c:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80004330:	fc843783          	ld	a5,-56(s0)
            uint64 volatile sepc = Riscv::r_sepc();
    80004334:	f8f43c23          	sd	a5,-104(s0)
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80004338:	100027f3          	csrr	a5,sstatus
    8000433c:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80004340:	fc043783          	ld	a5,-64(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80004344:	faf43023          	sd	a5,-96(s0)
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    80004348:	00200793          	li	a5,2
    8000434c:	1447b073          	csrc	sip,a5
            totalTime++;
    80004350:	0000c717          	auipc	a4,0xc
    80004354:	6e870713          	addi	a4,a4,1768 # 80010a38 <_ZN5Riscv12finishSystemE>
    80004358:	02873783          	ld	a5,40(a4)
    8000435c:	00178793          	addi	a5,a5,1
    80004360:	02f73423          	sd	a5,40(a4)
            PCB::timeSliceCounter++;
    80004364:	00004497          	auipc	s1,0x4
    80004368:	5844b483          	ld	s1,1412(s1) # 800088e8 <_GLOBAL_OFFSET_TABLE_+0x50>
    8000436c:	0004b783          	ld	a5,0(s1)
    80004370:	00178793          	addi	a5,a5,1
    80004374:	00f4b023          	sd	a5,0(s1)
            SleepPCBList::tryToWakePCBs();
    80004378:	fffff097          	auipc	ra,0xfffff
    8000437c:	2f4080e7          	jalr	756(ra) # 8000366c <_ZN12SleepPCBList13tryToWakePCBsEv>
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    80004380:	00004797          	auipc	a5,0x4
    80004384:	5b07b783          	ld	a5,1456(a5) # 80008930 <_GLOBAL_OFFSET_TABLE_+0x98>
    80004388:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    8000438c:	0187b783          	ld	a5,24(a5)
    80004390:	0004b703          	ld	a4,0(s1)
    80004394:	02f77863          	bgeu	a4,a5,800043c4 <_ZN5Riscv20handleSupervisorTrapEv+0x174>
            Riscv::w_sstatus(sstatus);
    80004398:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    8000439c:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    800043a0:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    800043a4:	14179073          	csrw	sepc,a5
            changePrivMode();
    800043a8:	00000097          	auipc	ra,0x0
    800043ac:	e68080e7          	jalr	-408(ra) # 80004210 <_ZN5Riscv14changePrivModeEv>
            Riscv::w_sepc(sepc);
            changePrivMode();
            break;
        }
    }
}
    800043b0:	06813083          	ld	ra,104(sp)
    800043b4:	06013403          	ld	s0,96(sp)
    800043b8:	05813483          	ld	s1,88(sp)
    800043bc:	07010113          	addi	sp,sp,112
    800043c0:	00008067          	ret
                PCB::timeSliceCounter = 0;
    800043c4:	0004b023          	sd	zero,0(s1)
                PCB::dispatch();
    800043c8:	ffffe097          	auipc	ra,0xffffe
    800043cc:	070080e7          	jalr	112(ra) # 80002438 <_ZN3PCB8dispatchEv>
    800043d0:	fc9ff06f          	j	80004398 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
            PCB::threadExitHandler();
    800043d4:	ffffe097          	auipc	ra,0xffffe
    800043d8:	2d4080e7          	jalr	724(ra) # 800026a8 <_ZN3PCB17threadExitHandlerEv>
            break;
    800043dc:	fd5ff06f          	j	800043b0 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
            PCB::threadExitHandler();
    800043e0:	ffffe097          	auipc	ra,0xffffe
    800043e4:	2c8080e7          	jalr	712(ra) # 800026a8 <_ZN3PCB17threadExitHandlerEv>
            break;
    800043e8:	fc9ff06f          	j	800043b0 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
            PCB::threadExitHandler();
    800043ec:	ffffe097          	auipc	ra,0xffffe
    800043f0:	2bc080e7          	jalr	700(ra) # 800026a8 <_ZN3PCB17threadExitHandlerEv>
            break;
    800043f4:	fbdff06f          	j	800043b0 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    800043f8:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    800043fc:	14102773          	csrr	a4,sepc
    80004400:	fce43c23          	sd	a4,-40(s0)
    return sepc;
    80004404:	fd843703          	ld	a4,-40(s0)
            uint64 volatile sepc = Riscv::r_sepc() + 4;
    80004408:	00470713          	addi	a4,a4,4
    8000440c:	fae43423          	sd	a4,-88(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80004410:	10002773          	csrr	a4,sstatus
    80004414:	fce43823          	sd	a4,-48(s0)
    return sstatus;
    80004418:	fd043703          	ld	a4,-48(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    8000441c:	fae43823          	sd	a4,-80(s0)
            switch(operation)
    80004420:	04300713          	li	a4,67
    80004424:	02f76463          	bltu	a4,a5,8000444c <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
    80004428:	00279793          	slli	a5,a5,0x2
    8000442c:	00004717          	auipc	a4,0x4
    80004430:	fb070713          	addi	a4,a4,-80 # 800083dc <CONSOLE_STATUS+0x3cc>
    80004434:	00e787b3          	add	a5,a5,a4
    80004438:	0007a783          	lw	a5,0(a5)
    8000443c:	00e787b3          	add	a5,a5,a4
    80004440:	00078067          	jr	a5
                    MemoryAllocator::memAllocHandler();
    80004444:	00000097          	auipc	ra,0x0
    80004448:	4f0080e7          	jalr	1264(ra) # 80004934 <_ZN15MemoryAllocator15memAllocHandlerEv>
            Riscv::w_sstatus(sstatus);
    8000444c:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80004450:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80004454:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80004458:	14179073          	csrw	sepc,a5
            changePrivMode();
    8000445c:	00000097          	auipc	ra,0x0
    80004460:	db4080e7          	jalr	-588(ra) # 80004210 <_ZN5Riscv14changePrivModeEv>
}
    80004464:	f4dff06f          	j	800043b0 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
                    MemoryAllocator::memFreeHandler();
    80004468:	00000097          	auipc	ra,0x0
    8000446c:	53c080e7          	jalr	1340(ra) # 800049a4 <_ZN15MemoryAllocator14memFreeHandlerEv>
                    break;
    80004470:	fddff06f          	j	8000444c <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadMakePCBHandler();
    80004474:	ffffe097          	auipc	ra,0xffffe
    80004478:	3fc080e7          	jalr	1020(ra) # 80002870 <_ZN3PCB20threadMakePCBHandlerEv>
                    break;
    8000447c:	fd1ff06f          	j	8000444c <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadCreateHandler();
    80004480:	ffffe097          	auipc	ra,0xffffe
    80004484:	308080e7          	jalr	776(ra) # 80002788 <_ZN3PCB19threadCreateHandlerEv>
                    break;
    80004488:	fc5ff06f          	j	8000444c <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadStartHandler();
    8000448c:	ffffe097          	auipc	ra,0xffffe
    80004490:	3a0080e7          	jalr	928(ra) # 8000282c <_ZN3PCB18threadStartHandlerEv>
                    break;
    80004494:	fb9ff06f          	j	8000444c <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadDispatchHandler();
    80004498:	ffffe097          	auipc	ra,0xffffe
    8000449c:	25c080e7          	jalr	604(ra) # 800026f4 <_ZN3PCB21threadDispatchHandlerEv>
                    break;
    800044a0:	fadff06f          	j	8000444c <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadExitHandler();
    800044a4:	ffffe097          	auipc	ra,0xffffe
    800044a8:	204080e7          	jalr	516(ra) # 800026a8 <_ZN3PCB17threadExitHandlerEv>
                    break;
    800044ac:	fa1ff06f          	j	8000444c <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadSleepHandler();
    800044b0:	ffffe097          	auipc	ra,0xffffe
    800044b4:	274080e7          	jalr	628(ra) # 80002724 <_ZN3PCB18threadSleepHandlerEv>
                    break;
    800044b8:	f95ff06f          	j	8000444c <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadDelPCBHandler();
    800044bc:	ffffe097          	auipc	ra,0xffffe
    800044c0:	44c080e7          	jalr	1100(ra) # 80002908 <_ZN3PCB19threadDelPCBHandlerEv>
                    break;
    800044c4:	f89ff06f          	j	8000444c <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KSemaphore::semOpenHandler();
    800044c8:	00001097          	auipc	ra,0x1
    800044cc:	cd0080e7          	jalr	-816(ra) # 80005198 <_ZN10KSemaphore14semOpenHandlerEv>
                    break;
    800044d0:	f7dff06f          	j	8000444c <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KSemaphore::semWaitHandler();
    800044d4:	00001097          	auipc	ra,0x1
    800044d8:	d78080e7          	jalr	-648(ra) # 8000524c <_ZN10KSemaphore14semWaitHandlerEv>
                    break;
    800044dc:	f71ff06f          	j	8000444c <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KSemaphore::semSignalHandler();
    800044e0:	00001097          	auipc	ra,0x1
    800044e4:	dc0080e7          	jalr	-576(ra) # 800052a0 <_ZN10KSemaphore16semSignalHandlerEv>
                    break;
    800044e8:	f65ff06f          	j	8000444c <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KSemaphore::semCloseHandler();
    800044ec:	00001097          	auipc	ra,0x1
    800044f0:	df8080e7          	jalr	-520(ra) # 800052e4 <_ZN10KSemaphore15semCloseHandlerEv>
                    break;
    800044f4:	f59ff06f          	j	8000444c <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KConsole::getcHandler();
    800044f8:	fffff097          	auipc	ra,0xfffff
    800044fc:	e3c080e7          	jalr	-452(ra) # 80003334 <_ZN8KConsole11getcHandlerEv>
                    break;
    80004500:	f4dff06f          	j	8000444c <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KConsole::putcHandler();
    80004504:	fffff097          	auipc	ra,0xfffff
    80004508:	e00080e7          	jalr	-512(ra) # 80003304 <_ZN8KConsole11putcHandlerEv>
                    break;
    8000450c:	f41ff06f          	j	8000444c <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KConsole::getCharHandler();
    80004510:	fffff097          	auipc	ra,0xfffff
    80004514:	f80080e7          	jalr	-128(ra) # 80003490 <_ZN8KConsole14getCharHandlerEv>
                    break;
    80004518:	f35ff06f          	j	8000444c <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>

000000008000451c <_ZN15MemoryAllocator10initMemoryEPv>:
{
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory(void* startAddr)
{
    8000451c:	ff010113          	addi	sp,sp,-16
    80004520:	00813423          	sd	s0,8(sp)
    80004524:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    80004528:	0000c717          	auipc	a4,0xc
    8000452c:	54072703          	lw	a4,1344(a4) # 80010a68 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004530:	00100793          	li	a5,1
    80004534:	02f70c63          	beq	a4,a5,8000456c <_ZN15MemoryAllocator10initMemoryEPv+0x50>
        return;
    memoryInitiliaized = 1;
    80004538:	0000c797          	auipc	a5,0xc
    8000453c:	53078793          	addi	a5,a5,1328 # 80010a68 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004540:	00100713          	li	a4,1
    80004544:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    80004548:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)startAddr;
    8000454c:	00a7b823          	sd	a0,16(a5)
    headFree->next = 0;
    80004550:	00053423          	sd	zero,8(a0)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)startAddr  + 1 - sizeof(BlockHeader));
    80004554:	00004797          	auipc	a5,0x4
    80004558:	3e47b783          	ld	a5,996(a5) # 80008938 <_GLOBAL_OFFSET_TABLE_+0xa0>
    8000455c:	0007b783          	ld	a5,0(a5)
    80004560:	40a787b3          	sub	a5,a5,a0
    80004564:	ff178793          	addi	a5,a5,-15
    80004568:	00f53023          	sd	a5,0(a0)
}
    8000456c:	00813403          	ld	s0,8(sp)
    80004570:	01010113          	addi	sp,sp,16
    80004574:	00008067          	ret

0000000080004578 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_>:

void MemoryAllocator::insertAllFragment(void *addr, size_t size, void* nxtAddr)
{
    80004578:	ff010113          	addi	sp,sp,-16
    8000457c:	00813423          	sd	s0,8(sp)
    80004580:	01010413          	addi	s0,sp,16
    //initMemory();
    if(memoryInitiliaized == 0)
    80004584:	0000c797          	auipc	a5,0xc
    80004588:	4e47a783          	lw	a5,1252(a5) # 80010a68 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    8000458c:	02078a63          	beqz	a5,800045c0 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x48>
        return;
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80004590:	00053423          	sd	zero,8(a0)
    newAllocated->size = size;
    80004594:	00b53023          	sd	a1,0(a0)
    if(headAllocated == 0)
    80004598:	0000c797          	auipc	a5,0xc
    8000459c:	4d87b783          	ld	a5,1240(a5) # 80010a70 <_ZN15MemoryAllocator13headAllocatedE>
    800045a0:	02078663          	beqz	a5,800045cc <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x54>
    {
        headAllocated = newAllocated;
    }
    else if(nxtAddr <= HEAP_END_ADDR)
    800045a4:	00004717          	auipc	a4,0x4
    800045a8:	39473703          	ld	a4,916(a4) # 80008938 <_GLOBAL_OFFSET_TABLE_+0xa0>
    800045ac:	00073703          	ld	a4,0(a4)
    800045b0:	02c76463          	bltu	a4,a2,800045d8 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x60>
    {
        BlockHeader * allFrag = (BlockHeader*)nxtAddr;
        newAllocated->next = allFrag->next;
    800045b4:	00863783          	ld	a5,8(a2)
    800045b8:	00f53423          	sd	a5,8(a0)
        allFrag->next = newAllocated;
    800045bc:	00a63423          	sd	a0,8(a2)
    else
    {
        newAllocated->next = headAllocated;
        headAllocated = newAllocated;
    }
}
    800045c0:	00813403          	ld	s0,8(sp)
    800045c4:	01010113          	addi	sp,sp,16
    800045c8:	00008067          	ret
        headAllocated = newAllocated;
    800045cc:	0000c797          	auipc	a5,0xc
    800045d0:	4aa7b223          	sd	a0,1188(a5) # 80010a70 <_ZN15MemoryAllocator13headAllocatedE>
    800045d4:	fedff06f          	j	800045c0 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x48>
        newAllocated->next = headAllocated;
    800045d8:	00f53423          	sd	a5,8(a0)
        headAllocated = newAllocated;
    800045dc:	0000c797          	auipc	a5,0xc
    800045e0:	48a7ba23          	sd	a0,1172(a5) # 80010a70 <_ZN15MemoryAllocator13headAllocatedE>
    800045e4:	fddff06f          	j	800045c0 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x48>

00000000800045e8 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size)
{
    800045e8:	ff010113          	addi	sp,sp,-16
    800045ec:	00813423          	sd	s0,8(sp)
    800045f0:	01010413          	addi	s0,sp,16
    //initMemory();
    if(memoryInitiliaized == 0)
    800045f4:	0000c797          	auipc	a5,0xc
    800045f8:	4747a783          	lw	a5,1140(a5) # 80010a68 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800045fc:	02078c63          	beqz	a5,80004634 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x4c>
        return;
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    80004600:	0000c797          	auipc	a5,0xc
    80004604:	4707b783          	ld	a5,1136(a5) # 80010a70 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80004608:	00053423          	sd	zero,8(a0)
    newAllocated->size = size;
    8000460c:	00b53023          	sd	a1,0(a0)
    BlockHeader* prev = 0;
    80004610:	00000713          	li	a4,0
    while(curr != 0)
    80004614:	00078c63          	beqz	a5,8000462c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x44>
    {
        if((void*)curr > addr)
    80004618:	00f56863          	bltu	a0,a5,80004628 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x40>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    8000461c:	00078713          	mv	a4,a5
        curr = curr->next;
    80004620:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80004624:	ff1ff06f          	j	80004614 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x2c>
            newAllocated->next = curr;
    80004628:	00f53423          	sd	a5,8(a0)
    }

    if(prev == 0)
    8000462c:	00070a63          	beqz	a4,80004640 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x58>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    80004630:	00a73423          	sd	a0,8(a4)
}
    80004634:	00813403          	ld	s0,8(sp)
    80004638:	01010113          	addi	sp,sp,16
    8000463c:	00008067          	ret
        headAllocated = newAllocated;
    80004640:	0000c797          	auipc	a5,0xc
    80004644:	42a7b823          	sd	a0,1072(a5) # 80010a70 <_ZN15MemoryAllocator13headAllocatedE>
    80004648:	fedff06f          	j	80004634 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x4c>

000000008000464c <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size)
{
    //initMemory();
    if(memoryInitiliaized == 0)
    8000464c:	0000c797          	auipc	a5,0xc
    80004650:	41c7a783          	lw	a5,1052(a5) # 80010a68 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004654:	0e078e63          	beqz	a5,80004750 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x104>
{
    80004658:	fe010113          	addi	sp,sp,-32
    8000465c:	00113c23          	sd	ra,24(sp)
    80004660:	00813823          	sd	s0,16(sp)
    80004664:	00913423          	sd	s1,8(sp)
    80004668:	02010413          	addi	s0,sp,32
    8000466c:	00050593          	mv	a1,a0
        return nullptr;
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80004670:	0000c497          	auipc	s1,0xc
    80004674:	4084b483          	ld	s1,1032(s1) # 80010a78 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    80004678:	00000713          	li	a4,0
    while(curr != 0)
    8000467c:	0a048e63          	beqz	s1,80004738 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xec>
    {
        if(curr->size >= size)
    80004680:	0004b783          	ld	a5,0(s1)
    80004684:	00b7f863          	bgeu	a5,a1,80004694 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            //insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    80004688:	00048713          	mv	a4,s1
        curr = curr->next;
    8000468c:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80004690:	fedff06f          	j	8000467c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    80004694:	01058693          	addi	a3,a1,16
    80004698:	00d486b3          	add	a3,s1,a3
            void* nxtAllFrag = ((char*)curr + curr->size + sizeof(BlockHeader));
    8000469c:	01078613          	addi	a2,a5,16
    800046a0:	00c48633          	add	a2,s1,a2
            if(newAddr <= HEAP_END_ADDR)
    800046a4:	00004517          	auipc	a0,0x4
    800046a8:	29453503          	ld	a0,660(a0) # 80008938 <_GLOBAL_OFFSET_TABLE_+0xa0>
    800046ac:	00053503          	ld	a0,0(a0)
    800046b0:	06d56063          	bltu	a0,a3,80004710 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xc4>
                uint64 size2 = curr->size - size;
    800046b4:	40b78533          	sub	a0,a5,a1
                if(size2 > sizeof(BlockHeader))
    800046b8:	01000813          	li	a6,16
    800046bc:	02a87663          	bgeu	a6,a0,800046e8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x9c>
                    newFree->next = curr->next;
    800046c0:	0084b783          	ld	a5,8(s1)
    800046c4:	00f6b423          	sd	a5,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    800046c8:	ff050513          	addi	a0,a0,-16
    800046cc:	00a6b023          	sd	a0,0(a3)
                    if (prev != 0)
    800046d0:	00070663          	beqz	a4,800046dc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x90>
                        prev->next = newFree;
    800046d4:	00d73423          	sd	a3,8(a4)
    800046d8:	0400006f          	j	80004718 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                        headFree = newFree;
    800046dc:	0000c797          	auipc	a5,0xc
    800046e0:	38d7be23          	sd	a3,924(a5) # 80010a78 <_ZN15MemoryAllocator8headFreeE>
    800046e4:	0340006f          	j	80004718 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                    if(prev != 0)
    800046e8:	00070a63          	beqz	a4,800046fc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb0>
                        prev->next = curr->next;
    800046ec:	0084b683          	ld	a3,8(s1)
    800046f0:	00d73423          	sd	a3,8(a4)
                    size+=size2;
    800046f4:	00078593          	mv	a1,a5
    800046f8:	0200006f          	j	80004718 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                        headFree = curr->next;
    800046fc:	0084b703          	ld	a4,8(s1)
    80004700:	0000c697          	auipc	a3,0xc
    80004704:	36e6bc23          	sd	a4,888(a3) # 80010a78 <_ZN15MemoryAllocator8headFreeE>
                    size+=size2;
    80004708:	00078593          	mv	a1,a5
    8000470c:	00c0006f          	j	80004718 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                if(prev != 0)
    80004710:	00070e63          	beqz	a4,8000472c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe0>
                    prev->next = 0;
    80004714:	00073423          	sd	zero,8(a4)
            insertAllFragment(oldAddr, size, nxtAllFrag);
    80004718:	00048513          	mv	a0,s1
    8000471c:	00000097          	auipc	ra,0x0
    80004720:	e5c080e7          	jalr	-420(ra) # 80004578 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    80004724:	01048513          	addi	a0,s1,16
            break;
    80004728:	0140006f          	j	8000473c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xf0>
                    headFree = 0;
    8000472c:	0000c797          	auipc	a5,0xc
    80004730:	3407b623          	sd	zero,844(a5) # 80010a78 <_ZN15MemoryAllocator8headFreeE>
    80004734:	fe5ff06f          	j	80004718 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
    uint64 retval = 0;
    80004738:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    8000473c:	01813083          	ld	ra,24(sp)
    80004740:	01013403          	ld	s0,16(sp)
    80004744:	00813483          	ld	s1,8(sp)
    80004748:	02010113          	addi	sp,sp,32
    8000474c:	00008067          	ret
        return nullptr;
    80004750:	00000513          	li	a0,0
}
    80004754:	00008067          	ret

0000000080004758 <_ZN15MemoryAllocator9mem_allocEm>:
{
    80004758:	ff010113          	addi	sp,sp,-16
    8000475c:	00113423          	sd	ra,8(sp)
    80004760:	00813023          	sd	s0,0(sp)
    80004764:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    80004768:	00000097          	auipc	ra,0x0
    8000476c:	ee4080e7          	jalr	-284(ra) # 8000464c <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    80004770:	00813083          	ld	ra,8(sp)
    80004774:	00013403          	ld	s0,0(sp)
    80004778:	01010113          	addi	sp,sp,16
    8000477c:	00008067          	ret

0000000080004780 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    80004780:	ff010113          	addi	sp,sp,-16
    80004784:	00813423          	sd	s0,8(sp)
    80004788:	01010413          	addi	s0,sp,16
    //initMemory();
    if(memoryInitiliaized == 0)
    8000478c:	0000c797          	auipc	a5,0xc
    80004790:	2dc7a783          	lw	a5,732(a5) # 80010a68 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004794:	06078263          	beqz	a5,800047f8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x78>
        return;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80004798:	0000c797          	auipc	a5,0xc
    8000479c:	2e07b783          	ld	a5,736(a5) # 80010a78 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    800047a0:	00b53023          	sd	a1,0(a0)
    newSegment->next = 0;
    800047a4:	00053423          	sd	zero,8(a0)
    BlockHeader* prev = 0;
    800047a8:	00000713          	li	a4,0
    while(curr != 0)
    800047ac:	00078c63          	beqz	a5,800047c4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x44>
    {
        if((void*)curr > addr)
    800047b0:	00f56863          	bltu	a0,a5,800047c0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x40>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    800047b4:	00078713          	mv	a4,a5
        curr = curr->next;
    800047b8:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800047bc:	ff1ff06f          	j	800047ac <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x2c>
            newSegment->next = curr;
    800047c0:	00f53423          	sd	a5,8(a0)
    }

    if(prev == 0)
    800047c4:	04070063          	beqz	a4,80004804 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x84>
        headFree = newSegment;
    else
        prev->next = newSegment;
    800047c8:	00a73423          	sd	a0,8(a4)

    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    800047cc:	00853783          	ld	a5,8(a0)
    800047d0:	00078a63          	beqz	a5,800047e4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x64>
    800047d4:	00053603          	ld	a2,0(a0)
    800047d8:	01060693          	addi	a3,a2,16
    800047dc:	00d506b3          	add	a3,a0,a3
    800047e0:	02d78863          	beq	a5,a3,80004810 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x90>
    {
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    800047e4:	00070a63          	beqz	a4,800047f8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x78>
    800047e8:	00073683          	ld	a3,0(a4)
    800047ec:	01068793          	addi	a5,a3,16
    800047f0:	00f707b3          	add	a5,a4,a5
    800047f4:	02a78c63          	beq	a5,a0,8000482c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    800047f8:	00813403          	ld	s0,8(sp)
    800047fc:	01010113          	addi	sp,sp,16
    80004800:	00008067          	ret
        headFree = newSegment;
    80004804:	0000c797          	auipc	a5,0xc
    80004808:	26a7ba23          	sd	a0,628(a5) # 80010a78 <_ZN15MemoryAllocator8headFreeE>
    8000480c:	fc1ff06f          	j	800047cc <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x4c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    80004810:	0007b683          	ld	a3,0(a5)
    80004814:	00d60633          	add	a2,a2,a3
    80004818:	01060613          	addi	a2,a2,16
    8000481c:	00c53023          	sd	a2,0(a0)
        newSegment->next = newSegment->next->next;
    80004820:	0087b783          	ld	a5,8(a5)
    80004824:	00f53423          	sd	a5,8(a0)
    80004828:	fbdff06f          	j	800047e4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x64>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    8000482c:	00053783          	ld	a5,0(a0)
    80004830:	00f686b3          	add	a3,a3,a5
    80004834:	01068693          	addi	a3,a3,16
    80004838:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    8000483c:	00853783          	ld	a5,8(a0)
    80004840:	00f73423          	sd	a5,8(a4)
    80004844:	fb5ff06f          	j	800047f8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x78>

0000000080004848 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    //initMemory();
    if(memoryInitiliaized == 0)
    80004848:	0000c797          	auipc	a5,0xc
    8000484c:	2207a783          	lw	a5,544(a5) # 80010a68 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004850:	08078263          	beqz	a5,800048d4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x8c>
{
    80004854:	fe010113          	addi	sp,sp,-32
    80004858:	00113c23          	sd	ra,24(sp)
    8000485c:	00813823          	sd	s0,16(sp)
    80004860:	00913423          	sd	s1,8(sp)
    80004864:	02010413          	addi	s0,sp,32
        return 1;
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    80004868:	0000c497          	auipc	s1,0xc
    8000486c:	2084b483          	ld	s1,520(s1) # 80010a70 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    80004870:	00000713          	li	a4,0
    while(curr != 0)
    80004874:	02048a63          	beqz	s1,800048a8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x60>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    80004878:	01048793          	addi	a5,s1,16
    8000487c:	00a78863          	beq	a5,a0,8000488c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x44>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    80004880:	00048713          	mv	a4,s1
        curr = curr->next;
    80004884:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80004888:	fedff06f          	j	80004874 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x2c>
            if(prev != 0)
    8000488c:	02070c63          	beqz	a4,800048c4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x7c>
                prev->next = curr->next;
    80004890:	0084b783          	ld	a5,8(s1)
    80004894:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    80004898:	0004b583          	ld	a1,0(s1)
    8000489c:	00048513          	mv	a0,s1
    800048a0:	00000097          	auipc	ra,0x0
    800048a4:	ee0080e7          	jalr	-288(ra) # 80004780 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    800048a8:	02048a63          	beqz	s1,800048dc <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    800048ac:	00000513          	li	a0,0
    else
        return 1;
}
    800048b0:	01813083          	ld	ra,24(sp)
    800048b4:	01013403          	ld	s0,16(sp)
    800048b8:	00813483          	ld	s1,8(sp)
    800048bc:	02010113          	addi	sp,sp,32
    800048c0:	00008067          	ret
                headAllocated = curr->next;
    800048c4:	0084b783          	ld	a5,8(s1)
    800048c8:	0000c717          	auipc	a4,0xc
    800048cc:	1af73423          	sd	a5,424(a4) # 80010a70 <_ZN15MemoryAllocator13headAllocatedE>
    800048d0:	fc9ff06f          	j	80004898 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x50>
        return 1;
    800048d4:	00100513          	li	a0,1
}
    800048d8:	00008067          	ret
        return 1;
    800048dc:	00100513          	li	a0,1
    800048e0:	fd1ff06f          	j	800048b0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x68>

00000000800048e4 <_ZN15MemoryAllocator8mem_freeEPv>:
{
    800048e4:	ff010113          	addi	sp,sp,-16
    800048e8:	00113423          	sd	ra,8(sp)
    800048ec:	00813023          	sd	s0,0(sp)
    800048f0:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    800048f4:	00000097          	auipc	ra,0x0
    800048f8:	f54080e7          	jalr	-172(ra) # 80004848 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    800048fc:	00813083          	ld	ra,8(sp)
    80004900:	00013403          	ld	s0,0(sp)
    80004904:	01010113          	addi	sp,sp,16
    80004908:	00008067          	ret

000000008000490c <_ZN15MemoryAllocator7kmallocEm>:
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    Riscv::w_a0_sscratch();
}

void* MemoryAllocator::kmalloc(size_t size)
{
    8000490c:	ff010113          	addi	sp,sp,-16
    80004910:	00113423          	sd	ra,8(sp)
    80004914:	00813023          	sd	s0,0(sp)
    80004918:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    8000491c:	00000097          	auipc	ra,0x0
    80004920:	e3c080e7          	jalr	-452(ra) # 80004758 <_ZN15MemoryAllocator9mem_allocEm>
}
    80004924:	00813083          	ld	ra,8(sp)
    80004928:	00013403          	ld	s0,0(sp)
    8000492c:	01010113          	addi	sp,sp,16
    80004930:	00008067          	ret

0000000080004934 <_ZN15MemoryAllocator15memAllocHandlerEv>:
{
    80004934:	ff010113          	addi	sp,sp,-16
    80004938:	00113423          	sd	ra,8(sp)
    8000493c:	00813023          	sd	s0,0(sp)
    80004940:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(size));
    80004944:	00058513          	mv	a0,a1
    void* allocatedAddr = kmalloc(size);
    80004948:	00651513          	slli	a0,a0,0x6
    8000494c:	00000097          	auipc	ra,0x0
    80004950:	fc0080e7          	jalr	-64(ra) # 8000490c <_ZN15MemoryAllocator7kmallocEm>
    if(allocatedAddr == nullptr)
    80004954:	02050063          	beqz	a0,80004974 <_ZN15MemoryAllocator15memAllocHandlerEv+0x40>
        __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    80004958:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    8000495c:	00000097          	auipc	ra,0x0
    80004960:	87c080e7          	jalr	-1924(ra) # 800041d8 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004964:	00813083          	ld	ra,8(sp)
    80004968:	00013403          	ld	s0,0(sp)
    8000496c:	01010113          	addi	sp,sp,16
    80004970:	00008067          	ret
        __asm__ volatile("li a0, 0x0");
    80004974:	00000513          	li	a0,0
    80004978:	fe5ff06f          	j	8000495c <_ZN15MemoryAllocator15memAllocHandlerEv+0x28>

000000008000497c <_ZN15MemoryAllocator5kfreeEPv>:

uint64 MemoryAllocator::kfree(void* p)
{
    8000497c:	ff010113          	addi	sp,sp,-16
    80004980:	00113423          	sd	ra,8(sp)
    80004984:	00813023          	sd	s0,0(sp)
    80004988:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    8000498c:	00000097          	auipc	ra,0x0
    80004990:	f58080e7          	jalr	-168(ra) # 800048e4 <_ZN15MemoryAllocator8mem_freeEPv>
    80004994:	00813083          	ld	ra,8(sp)
    80004998:	00013403          	ld	s0,0(sp)
    8000499c:	01010113          	addi	sp,sp,16
    800049a0:	00008067          	ret

00000000800049a4 <_ZN15MemoryAllocator14memFreeHandlerEv>:
{
    800049a4:	ff010113          	addi	sp,sp,-16
    800049a8:	00113423          	sd	ra,8(sp)
    800049ac:	00813023          	sd	s0,0(sp)
    800049b0:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(addr));
    800049b4:	00058513          	mv	a0,a1
    uint64 retval = kfree((void*)addr);
    800049b8:	00000097          	auipc	ra,0x0
    800049bc:	fc4080e7          	jalr	-60(ra) # 8000497c <_ZN15MemoryAllocator5kfreeEPv>
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    800049c0:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    800049c4:	00000097          	auipc	ra,0x0
    800049c8:	814080e7          	jalr	-2028(ra) # 800041d8 <_ZN5Riscv13w_a0_sscratchEv>
}
    800049cc:	00813083          	ld	ra,8(sp)
    800049d0:	00013403          	ld	s0,0(sp)
    800049d4:	01010113          	addi	sp,sp,16
    800049d8:	00008067          	ret

00000000800049dc <_Z12slabInitTestv>:
#include "../../h/slabTests.hpp"
#include "../../h/KConsole.hpp"

void slabInitTest()
{
    800049dc:	ff010113          	addi	sp,sp,-16
    800049e0:	00113423          	sd	ra,8(sp)
    800049e4:	00813023          	sd	s0,0(sp)
    800049e8:	01010413          	addi	s0,sp,16
    kmem_init((void*)HEAP_START_ADDR, 15);
    800049ec:	00f00593          	li	a1,15
    800049f0:	00004797          	auipc	a5,0x4
    800049f4:	ec07b783          	ld	a5,-320(a5) # 800088b0 <_GLOBAL_OFFSET_TABLE_+0x18>
    800049f8:	0007b503          	ld	a0,0(a5)
    800049fc:	ffffd097          	auipc	ra,0xffffd
    80004a00:	20c080e7          	jalr	524(ra) # 80001c08 <_Z9kmem_initPvi>
}
    80004a04:	00813083          	ld	ra,8(sp)
    80004a08:	00013403          	ld	s0,0(sp)
    80004a0c:	01010113          	addi	sp,sp,16
    80004a10:	00008067          	ret

0000000080004a14 <_Z19slabCacheCreateTestv>:

void slabCacheCreateTest()
{
    80004a14:	fe010113          	addi	sp,sp,-32
    80004a18:	00113c23          	sd	ra,24(sp)
    80004a1c:	00813823          	sd	s0,16(sp)
    80004a20:	00913423          	sd	s1,8(sp)
    80004a24:	01213023          	sd	s2,0(sp)
    80004a28:	02010413          	addi	s0,sp,32
    kmem_init((void*)HEAP_START_ADDR, 15);
    80004a2c:	00f00593          	li	a1,15
    80004a30:	00004797          	auipc	a5,0x4
    80004a34:	e807b783          	ld	a5,-384(a5) # 800088b0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004a38:	0007b503          	ld	a0,0(a5)
    80004a3c:	ffffd097          	auipc	ra,0xffffd
    80004a40:	1cc080e7          	jalr	460(ra) # 80001c08 <_Z9kmem_initPvi>
    kmem_cache_t* cache = kmem_cache_create("Cache test", 10, nullptr,nullptr);
    80004a44:	00000693          	li	a3,0
    80004a48:	00000613          	li	a2,0
    80004a4c:	00a00593          	li	a1,10
    80004a50:	00004517          	auipc	a0,0x4
    80004a54:	aa050513          	addi	a0,a0,-1376 # 800084f0 <CONSOLE_STATUS+0x4e0>
    80004a58:	ffffd097          	auipc	ra,0xffffd
    80004a5c:	320080e7          	jalr	800(ra) # 80001d78 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004a60:	00050493          	mv	s1,a0
    kmem_cache_t* cache2 = kmem_cache_create("Cache test 2", 10, nullptr,nullptr);
    80004a64:	00000693          	li	a3,0
    80004a68:	00000613          	li	a2,0
    80004a6c:	00a00593          	li	a1,10
    80004a70:	00004517          	auipc	a0,0x4
    80004a74:	a9050513          	addi	a0,a0,-1392 # 80008500 <CONSOLE_STATUS+0x4f0>
    80004a78:	ffffd097          	auipc	ra,0xffffd
    80004a7c:	300080e7          	jalr	768(ra) # 80001d78 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004a80:	00050913          	mv	s2,a0
    kmem_cache_t* cache3 = kmem_cache_create("Cache test 3", 10, nullptr,nullptr);
    80004a84:	00000693          	li	a3,0
    80004a88:	00000613          	li	a2,0
    80004a8c:	00a00593          	li	a1,10
    80004a90:	00004517          	auipc	a0,0x4
    80004a94:	a8050513          	addi	a0,a0,-1408 # 80008510 <CONSOLE_STATUS+0x500>
    80004a98:	ffffd097          	auipc	ra,0xffffd
    80004a9c:	2e0080e7          	jalr	736(ra) # 80001d78 <_Z17kmem_cache_createPKcmPFvPvES3_>
    if(cache && cache2 && cache3)
    80004aa0:	00048a63          	beqz	s1,80004ab4 <_Z19slabCacheCreateTestv+0xa0>
    80004aa4:	00090863          	beqz	s2,80004ab4 <_Z19slabCacheCreateTestv+0xa0>
    80004aa8:	00050663          	beqz	a0,80004ab4 <_Z19slabCacheCreateTestv+0xa0>
        printSlabAllocatorInfo();
    80004aac:	ffffd097          	auipc	ra,0xffffd
    80004ab0:	51c080e7          	jalr	1308(ra) # 80001fc8 <_Z22printSlabAllocatorInfov>
}
    80004ab4:	01813083          	ld	ra,24(sp)
    80004ab8:	01013403          	ld	s0,16(sp)
    80004abc:	00813483          	ld	s1,8(sp)
    80004ac0:	00013903          	ld	s2,0(sp)
    80004ac4:	02010113          	addi	sp,sp,32
    80004ac8:	00008067          	ret

0000000080004acc <_Z20slabCacheCreateTest2v>:

void slabCacheCreateTest2()
{
    80004acc:	fe010113          	addi	sp,sp,-32
    80004ad0:	00113c23          	sd	ra,24(sp)
    80004ad4:	00813823          	sd	s0,16(sp)
    80004ad8:	00913423          	sd	s1,8(sp)
    80004adc:	01213023          	sd	s2,0(sp)
    80004ae0:	02010413          	addi	s0,sp,32
    kmem_init((void*)HEAP_START_ADDR, 15);
    80004ae4:	00f00593          	li	a1,15
    80004ae8:	00004797          	auipc	a5,0x4
    80004aec:	dc87b783          	ld	a5,-568(a5) # 800088b0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004af0:	0007b503          	ld	a0,0(a5)
    80004af4:	ffffd097          	auipc	ra,0xffffd
    80004af8:	114080e7          	jalr	276(ra) # 80001c08 <_Z9kmem_initPvi>
    kmem_cache_t * cache = nullptr;
    for(int i = 1;i<=68;i++)
    80004afc:	00100493          	li	s1,1
    kmem_cache_t * cache = nullptr;
    80004b00:	00000913          	li	s2,0
    for(int i = 1;i<=68;i++)
    80004b04:	04400793          	li	a5,68
    80004b08:	0297c663          	blt	a5,s1,80004b34 <_Z20slabCacheCreateTest2v+0x68>
    {
        cache = kmem_cache_create("Cache test", 10, nullptr,nullptr);
    80004b0c:	00000693          	li	a3,0
    80004b10:	00000613          	li	a2,0
    80004b14:	00a00593          	li	a1,10
    80004b18:	00004517          	auipc	a0,0x4
    80004b1c:	9d850513          	addi	a0,a0,-1576 # 800084f0 <CONSOLE_STATUS+0x4e0>
    80004b20:	ffffd097          	auipc	ra,0xffffd
    80004b24:	258080e7          	jalr	600(ra) # 80001d78 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004b28:	00050913          	mv	s2,a0
    for(int i = 1;i<=68;i++)
    80004b2c:	0014849b          	addiw	s1,s1,1
    80004b30:	fd5ff06f          	j	80004b04 <_Z20slabCacheCreateTest2v+0x38>
    }
    printSlabAllocatorInfo();
    80004b34:	ffffd097          	auipc	ra,0xffffd
    80004b38:	494080e7          	jalr	1172(ra) # 80001fc8 <_Z22printSlabAllocatorInfov>
    kmem_cache_destroy(cache);
    80004b3c:	00090513          	mv	a0,s2
    80004b40:	ffffd097          	auipc	ra,0xffffd
    80004b44:	6fc080e7          	jalr	1788(ra) # 8000223c <_Z18kmem_cache_destroyP12kmem_cache_s>
    printSlabAllocatorInfo();
    80004b48:	ffffd097          	auipc	ra,0xffffd
    80004b4c:	480080e7          	jalr	1152(ra) # 80001fc8 <_Z22printSlabAllocatorInfov>
}
    80004b50:	01813083          	ld	ra,24(sp)
    80004b54:	01013403          	ld	s0,16(sp)
    80004b58:	00813483          	ld	s1,8(sp)
    80004b5c:	00013903          	ld	s2,0(sp)
    80004b60:	02010113          	addi	sp,sp,32
    80004b64:	00008067          	ret

0000000080004b68 <_Z6memsetPKvii>:
                                    "tc_1",
                                    "tc_2",
                                    "tc_3",
                                    "tc_4"};

void memset(const void *data, int size, int value) {
    80004b68:	ff010113          	addi	sp,sp,-16
    80004b6c:	00813423          	sd	s0,8(sp)
    80004b70:	01010413          	addi	s0,sp,16
    for (int j = 0; j < size; j++) {
    80004b74:	00000793          	li	a5,0
    80004b78:	00b7da63          	bge	a5,a1,80004b8c <_Z6memsetPKvii+0x24>
        *((char *)data + j) = value;
    80004b7c:	00f50733          	add	a4,a0,a5
    80004b80:	00c70023          	sb	a2,0(a4)
    for (int j = 0; j < size; j++) {
    80004b84:	0017879b          	addiw	a5,a5,1
    80004b88:	ff1ff06f          	j	80004b78 <_Z6memsetPKvii+0x10>
    }
}
    80004b8c:	00813403          	ld	s0,8(sp)
    80004b90:	01010113          	addi	sp,sp,16
    80004b94:	00008067          	ret

0000000080004b98 <_Z9constructPv>:

void construct(void *data) {
    80004b98:	ff010113          	addi	sp,sp,-16
    80004b9c:	00113423          	sd	ra,8(sp)
    80004ba0:	00813023          	sd	s0,0(sp)
    80004ba4:	01010413          	addi	s0,sp,16
    //static int i = 1;
    //KConsole::trapPrintInt(i); i++;
    //KConsole::trapPrintString(" Shared object constructed.\n");
    memset(data, shared_size, MASK);
    80004ba8:	0a500613          	li	a2,165
    80004bac:	00700593          	li	a1,7
    80004bb0:	00000097          	auipc	ra,0x0
    80004bb4:	fb8080e7          	jalr	-72(ra) # 80004b68 <_Z6memsetPKvii>
}
    80004bb8:	00813083          	ld	ra,8(sp)
    80004bbc:	00013403          	ld	s0,0(sp)
    80004bc0:	01010113          	addi	sp,sp,16
    80004bc4:	00008067          	ret

0000000080004bc8 <_Z5checkPvm>:

int check(void *data, size_t size) {
    80004bc8:	ff010113          	addi	sp,sp,-16
    80004bcc:	00813423          	sd	s0,8(sp)
    80004bd0:	01010413          	addi	s0,sp,16
    80004bd4:	00050613          	mv	a2,a0
    int ret = 1;
    for (size_t i = 0; i < size; i++) {
    80004bd8:	00000793          	li	a5,0
    int ret = 1;
    80004bdc:	00100513          	li	a0,1
    80004be0:	0080006f          	j	80004be8 <_Z5checkPvm+0x20>
    for (size_t i = 0; i < size; i++) {
    80004be4:	00178793          	addi	a5,a5,1
    80004be8:	00b7fe63          	bgeu	a5,a1,80004c04 <_Z5checkPvm+0x3c>
        if (((unsigned char *)data)[i] != MASK) {
    80004bec:	00f60733          	add	a4,a2,a5
    80004bf0:	00074683          	lbu	a3,0(a4)
    80004bf4:	0a500713          	li	a4,165
    80004bf8:	fee686e3          	beq	a3,a4,80004be4 <_Z5checkPvm+0x1c>
            ret = 0;
    80004bfc:	00000513          	li	a0,0
    80004c00:	fe5ff06f          	j	80004be4 <_Z5checkPvm+0x1c>
        }
    }

    return ret;
}
    80004c04:	00813403          	ld	s0,8(sp)
    80004c08:	01010113          	addi	sp,sp,16
    80004c0c:	00008067          	ret

0000000080004c10 <_Z4workPv>:
    kmem_cache_t *cache;
    void *data;
};

void work(void* pdata)
{
    80004c10:	f8010113          	addi	sp,sp,-128
    80004c14:	06113c23          	sd	ra,120(sp)
    80004c18:	06813823          	sd	s0,112(sp)
    80004c1c:	06913423          	sd	s1,104(sp)
    80004c20:	07213023          	sd	s2,96(sp)
    80004c24:	05313c23          	sd	s3,88(sp)
    80004c28:	05413823          	sd	s4,80(sp)
    80004c2c:	05513423          	sd	s5,72(sp)
    80004c30:	05613023          	sd	s6,64(sp)
    80004c34:	03713c23          	sd	s7,56(sp)
    80004c38:	03813823          	sd	s8,48(sp)
    80004c3c:	03913423          	sd	s9,40(sp)
    80004c40:	08010413          	addi	s0,sp,128
    struct data_s data = *(struct data_s*) pdata;
    80004c44:	00053c03          	ld	s8,0(a0)
    80004c48:	f9843423          	sd	s8,-120(s0)
    80004c4c:	00853783          	ld	a5,8(a0)
    80004c50:	f8f43823          	sd	a5,-112(s0)
    80004c54:	01053783          	ld	a5,16(a0)
    80004c58:	f8f43c23          	sd	a5,-104(s0)
    int size = 0;
    int object_size = data.id + 1;
    80004c5c:	000c079b          	sext.w	a5,s8
    80004c60:	001c0c1b          	addiw	s8,s8,1
    kmem_cache_t *cache = kmem_cache_create(CACHE_NAMES[data.id], object_size, 0, 0);
    80004c64:	00379713          	slli	a4,a5,0x3
    80004c68:	00004797          	auipc	a5,0x4
    80004c6c:	c0878793          	addi	a5,a5,-1016 # 80008870 <_ZL11CACHE_NAMES>
    80004c70:	00e787b3          	add	a5,a5,a4
    80004c74:	000c0b13          	mv	s6,s8
    80004c78:	00000693          	li	a3,0
    80004c7c:	00000613          	li	a2,0
    80004c80:	000c0593          	mv	a1,s8
    80004c84:	0007b503          	ld	a0,0(a5)
    80004c88:	ffffd097          	auipc	ra,0xffffd
    80004c8c:	0f0080e7          	jalr	240(ra) # 80001d78 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004c90:	00050a13          	mv	s4,a0

    struct objects_s *objs = (struct objects_s*)(kmalloc(sizeof(struct objects_s) * data.iterations));
    80004c94:	f9842b83          	lw	s7,-104(s0)
    80004c98:	004b9513          	slli	a0,s7,0x4
    80004c9c:	ffffd097          	auipc	ra,0xffffd
    80004ca0:	414080e7          	jalr	1044(ra) # 800020b0 <_Z7kmallocm>
    80004ca4:	00050a93          	mv	s5,a0

    for (int i = 0; i < data.iterations; i++) {
    80004ca8:	00000493          	li	s1,0
    int size = 0;
    80004cac:	00000993          	li	s3,0
    80004cb0:	0380006f          	j	80004ce8 <_Z4workPv+0xd8>
            if (!check(objs[size].data, shared_size)) {
                KConsole::trapPrintString("Value not correct!");
            }
        }
        else {
            objs[size].data = kmem_cache_alloc(cache);
    80004cb4:	00499913          	slli	s2,s3,0x4
    80004cb8:	012a8933          	add	s2,s5,s2
    80004cbc:	000a0513          	mv	a0,s4
    80004cc0:	ffffd097          	auipc	ra,0xffffd
    80004cc4:	f80080e7          	jalr	-128(ra) # 80001c40 <_Z16kmem_cache_allocP12kmem_cache_s>
    80004cc8:	00a93423          	sd	a0,8(s2)
            objs[size].cache = cache;
    80004ccc:	01493023          	sd	s4,0(s2)
            memset(objs[size].data, object_size, MASK);
    80004cd0:	0a500613          	li	a2,165
    80004cd4:	000c0593          	mv	a1,s8
    80004cd8:	00000097          	auipc	ra,0x0
    80004cdc:	e90080e7          	jalr	-368(ra) # 80004b68 <_Z6memsetPKvii>
        }
        size++;
    80004ce0:	0019899b          	addiw	s3,s3,1
    for (int i = 0; i < data.iterations; i++) {
    80004ce4:	0014849b          	addiw	s1,s1,1
    80004ce8:	0574da63          	bge	s1,s7,80004d3c <_Z4workPv+0x12c>
        if (i % 100 == 0) {
    80004cec:	06400793          	li	a5,100
    80004cf0:	02f4e7bb          	remw	a5,s1,a5
    80004cf4:	fc0790e3          	bnez	a5,80004cb4 <_Z4workPv+0xa4>
            objs[size].data = kmem_cache_alloc(data.shared);
    80004cf8:	f9043c83          	ld	s9,-112(s0)
    80004cfc:	00499913          	slli	s2,s3,0x4
    80004d00:	012a8933          	add	s2,s5,s2
    80004d04:	000c8513          	mv	a0,s9
    80004d08:	ffffd097          	auipc	ra,0xffffd
    80004d0c:	f38080e7          	jalr	-200(ra) # 80001c40 <_Z16kmem_cache_allocP12kmem_cache_s>
    80004d10:	00a93423          	sd	a0,8(s2)
            objs[size].cache = data.shared;
    80004d14:	01993023          	sd	s9,0(s2)
            if (!check(objs[size].data, shared_size)) {
    80004d18:	00700593          	li	a1,7
    80004d1c:	00000097          	auipc	ra,0x0
    80004d20:	eac080e7          	jalr	-340(ra) # 80004bc8 <_Z5checkPvm>
    80004d24:	fa051ee3          	bnez	a0,80004ce0 <_Z4workPv+0xd0>
                KConsole::trapPrintString("Value not correct!");
    80004d28:	00003517          	auipc	a0,0x3
    80004d2c:	7f850513          	addi	a0,a0,2040 # 80008520 <CONSOLE_STATUS+0x510>
    80004d30:	ffffe097          	auipc	ra,0xffffe
    80004d34:	794080e7          	jalr	1940(ra) # 800034c4 <_ZN8KConsole15trapPrintStringEPKc>
    80004d38:	fa9ff06f          	j	80004ce0 <_Z4workPv+0xd0>
    }

    kmem_cache_info(cache);
    80004d3c:	000a0513          	mv	a0,s4
    80004d40:	ffffd097          	auipc	ra,0xffffd
    80004d44:	12c080e7          	jalr	300(ra) # 80001e6c <_Z15kmem_cache_infoP12kmem_cache_s>
    kmem_cache_info(data.shared);
    80004d48:	f9043503          	ld	a0,-112(s0)
    80004d4c:	ffffd097          	auipc	ra,0xffffd
    80004d50:	120080e7          	jalr	288(ra) # 80001e6c <_Z15kmem_cache_infoP12kmem_cache_s>
    //printSlabAllocatorInfo();

    for (int i = 0; i < size; i++) {
    80004d54:	00000913          	li	s2,0
    80004d58:	0300006f          	j	80004d88 <_Z4workPv+0x178>
        if (!check(objs[i].data, (cache == objs[i].cache) ? object_size : shared_size)) {
    80004d5c:	000b0593          	mv	a1,s6
    80004d60:	0440006f          	j	80004da4 <_Z4workPv+0x194>
            KConsole::trapPrintString("Value not correct!");
    80004d64:	00003517          	auipc	a0,0x3
    80004d68:	7bc50513          	addi	a0,a0,1980 # 80008520 <CONSOLE_STATUS+0x510>
    80004d6c:	ffffe097          	auipc	ra,0xffffe
    80004d70:	758080e7          	jalr	1880(ra) # 800034c4 <_ZN8KConsole15trapPrintStringEPKc>
        }
        kmem_cache_free(objs[i].cache, objs[i].data);
    80004d74:	0084b583          	ld	a1,8(s1)
    80004d78:	0004b503          	ld	a0,0(s1)
    80004d7c:	ffffd097          	auipc	ra,0xffffd
    80004d80:	0a0080e7          	jalr	160(ra) # 80001e1c <_Z15kmem_cache_freeP12kmem_cache_sPv>
    for (int i = 0; i < size; i++) {
    80004d84:	0019091b          	addiw	s2,s2,1
    80004d88:	03395663          	bge	s2,s3,80004db4 <_Z4workPv+0x1a4>
        if (!check(objs[i].data, (cache == objs[i].cache) ? object_size : shared_size)) {
    80004d8c:	00491493          	slli	s1,s2,0x4
    80004d90:	009a84b3          	add	s1,s5,s1
    80004d94:	0084b503          	ld	a0,8(s1)
    80004d98:	0004b783          	ld	a5,0(s1)
    80004d9c:	fd4780e3          	beq	a5,s4,80004d5c <_Z4workPv+0x14c>
    80004da0:	00700593          	li	a1,7
    80004da4:	00000097          	auipc	ra,0x0
    80004da8:	e24080e7          	jalr	-476(ra) # 80004bc8 <_Z5checkPvm>
    80004dac:	fc0514e3          	bnez	a0,80004d74 <_Z4workPv+0x164>
    80004db0:	fb5ff06f          	j	80004d64 <_Z4workPv+0x154>
    }

    kmem_cache_info(cache);
    80004db4:	000a0513          	mv	a0,s4
    80004db8:	ffffd097          	auipc	ra,0xffffd
    80004dbc:	0b4080e7          	jalr	180(ra) # 80001e6c <_Z15kmem_cache_infoP12kmem_cache_s>

    //kmem_cache_info(cache);
    //kmem_cache_info(data.shared);
    //printSlabAllocatorInfo();

    kfree(objs);
    80004dc0:	000a8513          	mv	a0,s5
    80004dc4:	ffffd097          	auipc	ra,0xffffd
    80004dc8:	3f0080e7          	jalr	1008(ra) # 800021b4 <_Z5kfreePKv>
    kmem_cache_destroy(cache);
    80004dcc:	000a0513          	mv	a0,s4
    80004dd0:	ffffd097          	auipc	ra,0xffffd
    80004dd4:	46c080e7          	jalr	1132(ra) # 8000223c <_Z18kmem_cache_destroyP12kmem_cache_s>

    //printSlabAllocatorInfo();
}
    80004dd8:	07813083          	ld	ra,120(sp)
    80004ddc:	07013403          	ld	s0,112(sp)
    80004de0:	06813483          	ld	s1,104(sp)
    80004de4:	06013903          	ld	s2,96(sp)
    80004de8:	05813983          	ld	s3,88(sp)
    80004dec:	05013a03          	ld	s4,80(sp)
    80004df0:	04813a83          	ld	s5,72(sp)
    80004df4:	04013b03          	ld	s6,64(sp)
    80004df8:	03813b83          	ld	s7,56(sp)
    80004dfc:	03013c03          	ld	s8,48(sp)
    80004e00:	02813c83          	ld	s9,40(sp)
    80004e04:	08010113          	addi	sp,sp,128
    80004e08:	00008067          	ret

0000000080004e0c <_Z4runsPFvPvEP6data_si>:

void runs(void(*work)(void*), struct data_s* data, int num) {
    80004e0c:	fb010113          	addi	sp,sp,-80
    80004e10:	04113423          	sd	ra,72(sp)
    80004e14:	04813023          	sd	s0,64(sp)
    80004e18:	02913c23          	sd	s1,56(sp)
    80004e1c:	03213823          	sd	s2,48(sp)
    80004e20:	03313423          	sd	s3,40(sp)
    80004e24:	05010413          	addi	s0,sp,80
    80004e28:	00050993          	mv	s3,a0
    80004e2c:	00058913          	mv	s2,a1
    for (int i = 0; i < RUN_NUM; i++) {
    80004e30:	00000493          	li	s1,0
    80004e34:	00400793          	li	a5,4
    80004e38:	0297c863          	blt	a5,s1,80004e68 <_Z4runsPFvPvEP6data_si+0x5c>
        struct data_s private_data;
        private_data = *(struct data_s*) data;
    80004e3c:	00093783          	ld	a5,0(s2)
    80004e40:	faf43c23          	sd	a5,-72(s0)
    80004e44:	00893783          	ld	a5,8(s2)
    80004e48:	fcf43023          	sd	a5,-64(s0)
    80004e4c:	01093783          	ld	a5,16(s2)
    80004e50:	fcf43423          	sd	a5,-56(s0)
        private_data.id = i;
    80004e54:	fa942c23          	sw	s1,-72(s0)
        work(&private_data);
    80004e58:	fb840513          	addi	a0,s0,-72
    80004e5c:	000980e7          	jalr	s3
    for (int i = 0; i < RUN_NUM; i++) {
    80004e60:	0014849b          	addiw	s1,s1,1
    80004e64:	fd1ff06f          	j	80004e34 <_Z4runsPFvPvEP6data_si+0x28>
    }
}
    80004e68:	04813083          	ld	ra,72(sp)
    80004e6c:	04013403          	ld	s0,64(sp)
    80004e70:	03813483          	ld	s1,56(sp)
    80004e74:	03013903          	ld	s2,48(sp)
    80004e78:	02813983          	ld	s3,40(sp)
    80004e7c:	05010113          	addi	sp,sp,80
    80004e80:	00008067          	ret

0000000080004e84 <_Z7testOS2v>:

void testOS2()
{
    80004e84:	fc010113          	addi	sp,sp,-64
    80004e88:	02113c23          	sd	ra,56(sp)
    80004e8c:	02813823          	sd	s0,48(sp)
    80004e90:	02913423          	sd	s1,40(sp)
    80004e94:	04010413          	addi	s0,sp,64
    kmem_cache_t *shared = kmem_cache_create("shared object", shared_size, construct, nullptr);
    80004e98:	00000693          	li	a3,0
    80004e9c:	00000617          	auipc	a2,0x0
    80004ea0:	cfc60613          	addi	a2,a2,-772 # 80004b98 <_Z9constructPv>
    80004ea4:	00700593          	li	a1,7
    80004ea8:	00003517          	auipc	a0,0x3
    80004eac:	69050513          	addi	a0,a0,1680 # 80008538 <CONSOLE_STATUS+0x528>
    80004eb0:	ffffd097          	auipc	ra,0xffffd
    80004eb4:	ec8080e7          	jalr	-312(ra) # 80001d78 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004eb8:	00050493          	mv	s1,a0

    struct data_s data;
    data.shared = shared;
    80004ebc:	fca43823          	sd	a0,-48(s0)
    data.iterations = ITERATIONS;
    80004ec0:	3e800793          	li	a5,1000
    80004ec4:	fcf42c23          	sw	a5,-40(s0)
    runs(work, &data, RUN_NUM);
    80004ec8:	00500613          	li	a2,5
    80004ecc:	fc840593          	addi	a1,s0,-56
    80004ed0:	00000517          	auipc	a0,0x0
    80004ed4:	d4050513          	addi	a0,a0,-704 # 80004c10 <_Z4workPv>
    80004ed8:	00000097          	auipc	ra,0x0
    80004edc:	f34080e7          	jalr	-204(ra) # 80004e0c <_Z4runsPFvPvEP6data_si>

    kmem_cache_destroy(shared);
    80004ee0:	00048513          	mv	a0,s1
    80004ee4:	ffffd097          	auipc	ra,0xffffd
    80004ee8:	358080e7          	jalr	856(ra) # 8000223c <_Z18kmem_cache_destroyP12kmem_cache_s>
    80004eec:	03813083          	ld	ra,56(sp)
    80004ef0:	03013403          	ld	s0,48(sp)
    80004ef4:	02813483          	ld	s1,40(sp)
    80004ef8:	04010113          	addi	sp,sp,64
    80004efc:	00008067          	ret

0000000080004f00 <_ZN10KSemaphoreC1Ei>:
#include "../../h/KSemaphore.hpp"
#include "../../h/MemoryAllocator.hpp"
#include "../../h/Riscv.hpp"
#include "../../h/Scheduler.hpp"

KSemaphore::KSemaphore(int val)
    80004f00:	ff010113          	addi	sp,sp,-16
    80004f04:	00813423          	sd	s0,8(sp)
    80004f08:	01010413          	addi	s0,sp,16
{
    this->val = val;
    80004f0c:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    80004f10:	00053423          	sd	zero,8(a0)
    80004f14:	00053023          	sd	zero,0(a0)
}
    80004f18:	00813403          	ld	s0,8(sp)
    80004f1c:	01010113          	addi	sp,sp,16
    80004f20:	00008067          	ret

0000000080004f24 <_ZN10KSemaphore12addToBlockedEP3PCB>:
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    80004f24:	ff010113          	addi	sp,sp,-16
    80004f28:	00813423          	sd	s0,8(sp)
    80004f2c:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    80004f30:	0005b423          	sd	zero,8(a1)
    if(headBlocked == 0)
    80004f34:	00053783          	ld	a5,0(a0)
    80004f38:	00078e63          	beqz	a5,80004f54 <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    80004f3c:	00853783          	ld	a5,8(a0)
    80004f40:	00b7b423          	sd	a1,8(a5)
        tailBlocked = pcb;
    80004f44:	00b53423          	sd	a1,8(a0)
    }
}
    80004f48:	00813403          	ld	s0,8(sp)
    80004f4c:	01010113          	addi	sp,sp,16
    80004f50:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    80004f54:	00b53423          	sd	a1,8(a0)
    80004f58:	00b53023          	sd	a1,0(a0)
    80004f5c:	fedff06f          	j	80004f48 <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

0000000080004f60 <_ZN10KSemaphore5blockEv>:

void KSemaphore::block()
{
    80004f60:	ff010113          	addi	sp,sp,-16
    80004f64:	00113423          	sd	ra,8(sp)
    80004f68:	00813023          	sd	s0,0(sp)
    80004f6c:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    80004f70:	00004797          	auipc	a5,0x4
    80004f74:	9c07b783          	ld	a5,-1600(a5) # 80008930 <_GLOBAL_OFFSET_TABLE_+0x98>
    80004f78:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    80004f7c:	00200793          	li	a5,2
    80004f80:	04f5a023          	sw	a5,64(a1)
    addToBlocked(PCB::running);
    80004f84:	00000097          	auipc	ra,0x0
    80004f88:	fa0080e7          	jalr	-96(ra) # 80004f24 <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    80004f8c:	ffffd097          	auipc	ra,0xffffd
    80004f90:	4ac080e7          	jalr	1196(ra) # 80002438 <_ZN3PCB8dispatchEv>
}
    80004f94:	00813083          	ld	ra,8(sp)
    80004f98:	00013403          	ld	s0,0(sp)
    80004f9c:	01010113          	addi	sp,sp,16
    80004fa0:	00008067          	ret

0000000080004fa4 <_ZN10KSemaphore4waitEv>:
    PCB::running->retFromClosedSem = false;
    80004fa4:	00004797          	auipc	a5,0x4
    80004fa8:	98c7b783          	ld	a5,-1652(a5) # 80008930 <_GLOBAL_OFFSET_TABLE_+0x98>
    80004fac:	0007b783          	ld	a5,0(a5)
    80004fb0:	04078c23          	sb	zero,88(a5)
    if(--val < 0)
    80004fb4:	01052783          	lw	a5,16(a0)
    80004fb8:	fff7879b          	addiw	a5,a5,-1
    80004fbc:	00f52823          	sw	a5,16(a0)
    80004fc0:	02079713          	slli	a4,a5,0x20
    80004fc4:	00074663          	bltz	a4,80004fd0 <_ZN10KSemaphore4waitEv+0x2c>
}
    80004fc8:	00000513          	li	a0,0
    80004fcc:	00008067          	ret
{
    80004fd0:	ff010113          	addi	sp,sp,-16
    80004fd4:	00113423          	sd	ra,8(sp)
    80004fd8:	00813023          	sd	s0,0(sp)
    80004fdc:	01010413          	addi	s0,sp,16
        block();
    80004fe0:	00000097          	auipc	ra,0x0
    80004fe4:	f80080e7          	jalr	-128(ra) # 80004f60 <_ZN10KSemaphore5blockEv>
}
    80004fe8:	00000513          	li	a0,0
    80004fec:	00813083          	ld	ra,8(sp)
    80004ff0:	00013403          	ld	s0,0(sp)
    80004ff4:	01010113          	addi	sp,sp,16
    80004ff8:	00008067          	ret

0000000080004ffc <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    80004ffc:	ff010113          	addi	sp,sp,-16
    80005000:	00813423          	sd	s0,8(sp)
    80005004:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    80005008:	00053503          	ld	a0,0(a0)
    8000500c:	00813403          	ld	s0,8(sp)
    80005010:	01010113          	addi	sp,sp,16
    80005014:	00008067          	ret

0000000080005018 <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    80005018:	ff010113          	addi	sp,sp,-16
    8000501c:	00813423          	sd	s0,8(sp)
    80005020:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    80005024:	00053783          	ld	a5,0(a0)
    80005028:	00078c63          	beqz	a5,80005040 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    8000502c:	0087b703          	ld	a4,8(a5)
    80005030:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    80005034:	0007b423          	sd	zero,8(a5)
    if(headBlocked == 0)
    80005038:	00053783          	ld	a5,0(a0)
    8000503c:	00078863          	beqz	a5,8000504c <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    80005040:	00813403          	ld	s0,8(sp)
    80005044:	01010113          	addi	sp,sp,16
    80005048:	00008067          	ret
        tailBlocked =0;
    8000504c:	00053423          	sd	zero,8(a0)
    80005050:	ff1ff06f          	j	80005040 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

0000000080005054 <_ZN10KSemaphoreD1Ev>:
KSemaphore::~KSemaphore()
    80005054:	fe010113          	addi	sp,sp,-32
    80005058:	00113c23          	sd	ra,24(sp)
    8000505c:	00813823          	sd	s0,16(sp)
    80005060:	00913423          	sd	s1,8(sp)
    80005064:	01213023          	sd	s2,0(sp)
    80005068:	02010413          	addi	s0,sp,32
    8000506c:	00050913          	mv	s2,a0
    while(getFirstBlocked() != 0)
    80005070:	00090513          	mv	a0,s2
    80005074:	00000097          	auipc	ra,0x0
    80005078:	f88080e7          	jalr	-120(ra) # 80004ffc <_ZN10KSemaphore15getFirstBlockedEv>
    8000507c:	00050493          	mv	s1,a0
    80005080:	02050463          	beqz	a0,800050a8 <_ZN10KSemaphoreD1Ev+0x54>
        removeFirstBlocked();
    80005084:	00090513          	mv	a0,s2
    80005088:	00000097          	auipc	ra,0x0
    8000508c:	f90080e7          	jalr	-112(ra) # 80005018 <_ZN10KSemaphore18removeFirstBlockedEv>
        pcb->retFromClosedSem = true;
    80005090:	00100793          	li	a5,1
    80005094:	04f48c23          	sb	a5,88(s1)
        Scheduler::put(pcb);
    80005098:	00048513          	mv	a0,s1
    8000509c:	ffffe097          	auipc	ra,0xffffe
    800050a0:	6e0080e7          	jalr	1760(ra) # 8000377c <_ZN9Scheduler3putEP3PCB>
    while(getFirstBlocked() != 0)
    800050a4:	fcdff06f          	j	80005070 <_ZN10KSemaphoreD1Ev+0x1c>
}
    800050a8:	01813083          	ld	ra,24(sp)
    800050ac:	01013403          	ld	s0,16(sp)
    800050b0:	00813483          	ld	s1,8(sp)
    800050b4:	00013903          	ld	s2,0(sp)
    800050b8:	02010113          	addi	sp,sp,32
    800050bc:	00008067          	ret

00000000800050c0 <_ZN10KSemaphore7unblockEv>:

void KSemaphore::unblock() {
    800050c0:	fe010113          	addi	sp,sp,-32
    800050c4:	00113c23          	sd	ra,24(sp)
    800050c8:	00813823          	sd	s0,16(sp)
    800050cc:	00913423          	sd	s1,8(sp)
    800050d0:	01213023          	sd	s2,0(sp)
    800050d4:	02010413          	addi	s0,sp,32
    800050d8:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    800050dc:	00000097          	auipc	ra,0x0
    800050e0:	f20080e7          	jalr	-224(ra) # 80004ffc <_ZN10KSemaphore15getFirstBlockedEv>
    800050e4:	00050493          	mv	s1,a0
    removeFirstBlocked();
    800050e8:	00090513          	mv	a0,s2
    800050ec:	00000097          	auipc	ra,0x0
    800050f0:	f2c080e7          	jalr	-212(ra) # 80005018 <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    800050f4:	00048863          	beqz	s1,80005104 <_ZN10KSemaphore7unblockEv+0x44>
    {
        Scheduler::put(fr);
    800050f8:	00048513          	mv	a0,s1
    800050fc:	ffffe097          	auipc	ra,0xffffe
    80005100:	680080e7          	jalr	1664(ra) # 8000377c <_ZN9Scheduler3putEP3PCB>
    }
}
    80005104:	01813083          	ld	ra,24(sp)
    80005108:	01013403          	ld	s0,16(sp)
    8000510c:	00813483          	ld	s1,8(sp)
    80005110:	00013903          	ld	s2,0(sp)
    80005114:	02010113          	addi	sp,sp,32
    80005118:	00008067          	ret

000000008000511c <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    8000511c:	01052783          	lw	a5,16(a0)
    80005120:	0017879b          	addiw	a5,a5,1
    80005124:	0007871b          	sext.w	a4,a5
    80005128:	00f52823          	sw	a5,16(a0)
    8000512c:	00e05663          	blez	a4,80005138 <_ZN10KSemaphore6signalEv+0x1c>
}
    80005130:	00000513          	li	a0,0
    80005134:	00008067          	ret
uint64 KSemaphore::signal() {
    80005138:	ff010113          	addi	sp,sp,-16
    8000513c:	00113423          	sd	ra,8(sp)
    80005140:	00813023          	sd	s0,0(sp)
    80005144:	01010413          	addi	s0,sp,16
        unblock();
    80005148:	00000097          	auipc	ra,0x0
    8000514c:	f78080e7          	jalr	-136(ra) # 800050c0 <_ZN10KSemaphore7unblockEv>
}
    80005150:	00000513          	li	a0,0
    80005154:	00813083          	ld	ra,8(sp)
    80005158:	00013403          	ld	s0,0(sp)
    8000515c:	01010113          	addi	sp,sp,16
    80005160:	00008067          	ret

0000000080005164 <_ZN10KSemaphorenwEm>:
void *KSemaphore::operator new(size_t size) {
    80005164:	ff010113          	addi	sp,sp,-16
    80005168:	00113423          	sd	ra,8(sp)
    8000516c:	00813023          	sd	s0,0(sp)
    80005170:	01010413          	addi	s0,sp,16
    return kmem_cache_alloc(Riscv::semaphoreCache);
    80005174:	00003797          	auipc	a5,0x3
    80005178:	7447b783          	ld	a5,1860(a5) # 800088b8 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000517c:	0007b503          	ld	a0,0(a5)
    80005180:	ffffd097          	auipc	ra,0xffffd
    80005184:	ac0080e7          	jalr	-1344(ra) # 80001c40 <_Z16kmem_cache_allocP12kmem_cache_s>
    //return MemoryAllocator::kmalloc(size);
}
    80005188:	00813083          	ld	ra,8(sp)
    8000518c:	00013403          	ld	s0,0(sp)
    80005190:	01010113          	addi	sp,sp,16
    80005194:	00008067          	ret

0000000080005198 <_ZN10KSemaphore14semOpenHandlerEv>:
{
    80005198:	fd010113          	addi	sp,sp,-48
    8000519c:	02113423          	sd	ra,40(sp)
    800051a0:	02813023          	sd	s0,32(sp)
    800051a4:	00913c23          	sd	s1,24(sp)
    800051a8:	01213823          	sd	s2,16(sp)
    800051ac:	01313423          	sd	s3,8(sp)
    800051b0:	03010413          	addi	s0,sp,48
    __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
    800051b4:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(val));
    800051b8:	00060993          	mv	s3,a2
    KSemaphore* newSem = new KSemaphore(val);
    800051bc:	01800513          	li	a0,24
    800051c0:	00000097          	auipc	ra,0x0
    800051c4:	fa4080e7          	jalr	-92(ra) # 80005164 <_ZN10KSemaphorenwEm>
    800051c8:	00050493          	mv	s1,a0
    800051cc:	00050863          	beqz	a0,800051dc <_ZN10KSemaphore14semOpenHandlerEv+0x44>
    800051d0:	0009859b          	sext.w	a1,s3
    800051d4:	00000097          	auipc	ra,0x0
    800051d8:	d2c080e7          	jalr	-724(ra) # 80004f00 <_ZN10KSemaphoreC1Ei>
    (*semaphoreHandle) = newSem;
    800051dc:	00993023          	sd	s1,0(s2)
    if(newSem == 0)
    800051e0:	02048663          	beqz	s1,8000520c <_ZN10KSemaphore14semOpenHandlerEv+0x74>
            __asm__ volatile("li a0, 0");
    800051e4:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    800051e8:	fffff097          	auipc	ra,0xfffff
    800051ec:	ff0080e7          	jalr	-16(ra) # 800041d8 <_ZN5Riscv13w_a0_sscratchEv>
}
    800051f0:	02813083          	ld	ra,40(sp)
    800051f4:	02013403          	ld	s0,32(sp)
    800051f8:	01813483          	ld	s1,24(sp)
    800051fc:	01013903          	ld	s2,16(sp)
    80005200:	00813983          	ld	s3,8(sp)
    80005204:	03010113          	addi	sp,sp,48
    80005208:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    8000520c:	fff00513          	li	a0,-1
    80005210:	fd9ff06f          	j	800051e8 <_ZN10KSemaphore14semOpenHandlerEv+0x50>

0000000080005214 <_ZN10KSemaphoredlEPv>:

void KSemaphore::operator delete(void *p)
{
    80005214:	ff010113          	addi	sp,sp,-16
    80005218:	00113423          	sd	ra,8(sp)
    8000521c:	00813023          	sd	s0,0(sp)
    80005220:	01010413          	addi	s0,sp,16
    80005224:	00050593          	mv	a1,a0
    kmem_cache_free(Riscv::semaphoreCache, p);
    80005228:	00003797          	auipc	a5,0x3
    8000522c:	6907b783          	ld	a5,1680(a5) # 800088b8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80005230:	0007b503          	ld	a0,0(a5)
    80005234:	ffffd097          	auipc	ra,0xffffd
    80005238:	be8080e7          	jalr	-1048(ra) # 80001e1c <_Z15kmem_cache_freeP12kmem_cache_sPv>
    //MemoryAllocator::kfree(p);
}
    8000523c:	00813083          	ld	ra,8(sp)
    80005240:	00013403          	ld	s0,0(sp)
    80005244:	01010113          	addi	sp,sp,16
    80005248:	00008067          	ret

000000008000524c <_ZN10KSemaphore14semWaitHandlerEv>:

void KSemaphore::semWaitHandler()
{
    8000524c:	ff010113          	addi	sp,sp,-16
    80005250:	00113423          	sd	ra,8(sp)
    80005254:	00813023          	sd	s0,0(sp)
    80005258:	01010413          	addi	s0,sp,16
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    8000525c:	00058513          	mv	a0,a1
    kSem->wait();
    80005260:	00000097          	auipc	ra,0x0
    80005264:	d44080e7          	jalr	-700(ra) # 80004fa4 <_ZN10KSemaphore4waitEv>
    if(PCB::running->retFromClosedSem)
    80005268:	00003797          	auipc	a5,0x3
    8000526c:	6c87b783          	ld	a5,1736(a5) # 80008930 <_GLOBAL_OFFSET_TABLE_+0x98>
    80005270:	0007b783          	ld	a5,0(a5)
    80005274:	0587c783          	lbu	a5,88(a5)
    80005278:	02078063          	beqz	a5,80005298 <_ZN10KSemaphore14semWaitHandlerEv+0x4c>
        __asm__ volatile("li a0, 0x1");
    8000527c:	00100513          	li	a0,1
    else
        __asm__ volatile("li a0, 0x0");
    Riscv::w_a0_sscratch();
    80005280:	fffff097          	auipc	ra,0xfffff
    80005284:	f58080e7          	jalr	-168(ra) # 800041d8 <_ZN5Riscv13w_a0_sscratchEv>
}
    80005288:	00813083          	ld	ra,8(sp)
    8000528c:	00013403          	ld	s0,0(sp)
    80005290:	01010113          	addi	sp,sp,16
    80005294:	00008067          	ret
        __asm__ volatile("li a0, 0x0");
    80005298:	00000513          	li	a0,0
    8000529c:	fe5ff06f          	j	80005280 <_ZN10KSemaphore14semWaitHandlerEv+0x34>

00000000800052a0 <_ZN10KSemaphore16semSignalHandlerEv>:

void KSemaphore::semSignalHandler() {
    800052a0:	ff010113          	addi	sp,sp,-16
    800052a4:	00113423          	sd	ra,8(sp)
    800052a8:	00813023          	sd	s0,0(sp)
    800052ac:	01010413          	addi	s0,sp,16
    KSemaphore *kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800052b0:	00058513          	mv	a0,a1
    if (kSem == 0)
    800052b4:	02050463          	beqz	a0,800052dc <_ZN10KSemaphore16semSignalHandlerEv+0x3c>
    {
        __asm__ volatile("li a0, 0x1");
    }
    else
    {
        kSem->signal();
    800052b8:	00000097          	auipc	ra,0x0
    800052bc:	e64080e7          	jalr	-412(ra) # 8000511c <_ZN10KSemaphore6signalEv>
        __asm__ volatile("li a0, 0x0");
    800052c0:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    800052c4:	fffff097          	auipc	ra,0xfffff
    800052c8:	f14080e7          	jalr	-236(ra) # 800041d8 <_ZN5Riscv13w_a0_sscratchEv>
}
    800052cc:	00813083          	ld	ra,8(sp)
    800052d0:	00013403          	ld	s0,0(sp)
    800052d4:	01010113          	addi	sp,sp,16
    800052d8:	00008067          	ret
        __asm__ volatile("li a0, 0x1");
    800052dc:	00100513          	li	a0,1
    800052e0:	fe5ff06f          	j	800052c4 <_ZN10KSemaphore16semSignalHandlerEv+0x24>

00000000800052e4 <_ZN10KSemaphore15semCloseHandlerEv>:

void KSemaphore::semCloseHandler()
{
    800052e4:	fe010113          	addi	sp,sp,-32
    800052e8:	00113c23          	sd	ra,24(sp)
    800052ec:	00813823          	sd	s0,16(sp)
    800052f0:	00913423          	sd	s1,8(sp)
    800052f4:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800052f8:	00058493          	mv	s1,a1
    delete kSem;
    800052fc:	00048e63          	beqz	s1,80005318 <_ZN10KSemaphore15semCloseHandlerEv+0x34>
    80005300:	00048513          	mv	a0,s1
    80005304:	00000097          	auipc	ra,0x0
    80005308:	d50080e7          	jalr	-688(ra) # 80005054 <_ZN10KSemaphoreD1Ev>
    8000530c:	00048513          	mv	a0,s1
    80005310:	00000097          	auipc	ra,0x0
    80005314:	f04080e7          	jalr	-252(ra) # 80005214 <_ZN10KSemaphoredlEPv>
    __asm__ volatile("li a0, 0");
    80005318:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    8000531c:	fffff097          	auipc	ra,0xfffff
    80005320:	ebc080e7          	jalr	-324(ra) # 800041d8 <_ZN5Riscv13w_a0_sscratchEv>
}
    80005324:	01813083          	ld	ra,24(sp)
    80005328:	01013403          	ld	s0,16(sp)
    8000532c:	00813483          	ld	s1,8(sp)
    80005330:	02010113          	addi	sp,sp,32
    80005334:	00008067          	ret

0000000080005338 <start>:
    80005338:	ff010113          	addi	sp,sp,-16
    8000533c:	00813423          	sd	s0,8(sp)
    80005340:	01010413          	addi	s0,sp,16
    80005344:	300027f3          	csrr	a5,mstatus
    80005348:	ffffe737          	lui	a4,0xffffe
    8000534c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7ffe77ff>
    80005350:	00e7f7b3          	and	a5,a5,a4
    80005354:	00001737          	lui	a4,0x1
    80005358:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    8000535c:	00e7e7b3          	or	a5,a5,a4
    80005360:	30079073          	csrw	mstatus,a5
    80005364:	00000797          	auipc	a5,0x0
    80005368:	16078793          	addi	a5,a5,352 # 800054c4 <system_main>
    8000536c:	34179073          	csrw	mepc,a5
    80005370:	00000793          	li	a5,0
    80005374:	18079073          	csrw	satp,a5
    80005378:	000107b7          	lui	a5,0x10
    8000537c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80005380:	30279073          	csrw	medeleg,a5
    80005384:	30379073          	csrw	mideleg,a5
    80005388:	104027f3          	csrr	a5,sie
    8000538c:	2227e793          	ori	a5,a5,546
    80005390:	10479073          	csrw	sie,a5
    80005394:	fff00793          	li	a5,-1
    80005398:	00a7d793          	srli	a5,a5,0xa
    8000539c:	3b079073          	csrw	pmpaddr0,a5
    800053a0:	00f00793          	li	a5,15
    800053a4:	3a079073          	csrw	pmpcfg0,a5
    800053a8:	f14027f3          	csrr	a5,mhartid
    800053ac:	0200c737          	lui	a4,0x200c
    800053b0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800053b4:	0007869b          	sext.w	a3,a5
    800053b8:	00269713          	slli	a4,a3,0x2
    800053bc:	000f4637          	lui	a2,0xf4
    800053c0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800053c4:	00d70733          	add	a4,a4,a3
    800053c8:	0037979b          	slliw	a5,a5,0x3
    800053cc:	020046b7          	lui	a3,0x2004
    800053d0:	00d787b3          	add	a5,a5,a3
    800053d4:	00c585b3          	add	a1,a1,a2
    800053d8:	00371693          	slli	a3,a4,0x3
    800053dc:	0000b717          	auipc	a4,0xb
    800053e0:	6a470713          	addi	a4,a4,1700 # 80010a80 <timer_scratch>
    800053e4:	00b7b023          	sd	a1,0(a5)
    800053e8:	00d70733          	add	a4,a4,a3
    800053ec:	00f73c23          	sd	a5,24(a4)
    800053f0:	02c73023          	sd	a2,32(a4)
    800053f4:	34071073          	csrw	mscratch,a4
    800053f8:	00000797          	auipc	a5,0x0
    800053fc:	6e878793          	addi	a5,a5,1768 # 80005ae0 <timervec>
    80005400:	30579073          	csrw	mtvec,a5
    80005404:	300027f3          	csrr	a5,mstatus
    80005408:	0087e793          	ori	a5,a5,8
    8000540c:	30079073          	csrw	mstatus,a5
    80005410:	304027f3          	csrr	a5,mie
    80005414:	0807e793          	ori	a5,a5,128
    80005418:	30479073          	csrw	mie,a5
    8000541c:	f14027f3          	csrr	a5,mhartid
    80005420:	0007879b          	sext.w	a5,a5
    80005424:	00078213          	mv	tp,a5
    80005428:	30200073          	mret
    8000542c:	00813403          	ld	s0,8(sp)
    80005430:	01010113          	addi	sp,sp,16
    80005434:	00008067          	ret

0000000080005438 <timerinit>:
    80005438:	ff010113          	addi	sp,sp,-16
    8000543c:	00813423          	sd	s0,8(sp)
    80005440:	01010413          	addi	s0,sp,16
    80005444:	f14027f3          	csrr	a5,mhartid
    80005448:	0200c737          	lui	a4,0x200c
    8000544c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005450:	0007869b          	sext.w	a3,a5
    80005454:	00269713          	slli	a4,a3,0x2
    80005458:	000f4637          	lui	a2,0xf4
    8000545c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005460:	00d70733          	add	a4,a4,a3
    80005464:	0037979b          	slliw	a5,a5,0x3
    80005468:	020046b7          	lui	a3,0x2004
    8000546c:	00d787b3          	add	a5,a5,a3
    80005470:	00c585b3          	add	a1,a1,a2
    80005474:	00371693          	slli	a3,a4,0x3
    80005478:	0000b717          	auipc	a4,0xb
    8000547c:	60870713          	addi	a4,a4,1544 # 80010a80 <timer_scratch>
    80005480:	00b7b023          	sd	a1,0(a5)
    80005484:	00d70733          	add	a4,a4,a3
    80005488:	00f73c23          	sd	a5,24(a4)
    8000548c:	02c73023          	sd	a2,32(a4)
    80005490:	34071073          	csrw	mscratch,a4
    80005494:	00000797          	auipc	a5,0x0
    80005498:	64c78793          	addi	a5,a5,1612 # 80005ae0 <timervec>
    8000549c:	30579073          	csrw	mtvec,a5
    800054a0:	300027f3          	csrr	a5,mstatus
    800054a4:	0087e793          	ori	a5,a5,8
    800054a8:	30079073          	csrw	mstatus,a5
    800054ac:	304027f3          	csrr	a5,mie
    800054b0:	0807e793          	ori	a5,a5,128
    800054b4:	30479073          	csrw	mie,a5
    800054b8:	00813403          	ld	s0,8(sp)
    800054bc:	01010113          	addi	sp,sp,16
    800054c0:	00008067          	ret

00000000800054c4 <system_main>:
    800054c4:	fe010113          	addi	sp,sp,-32
    800054c8:	00813823          	sd	s0,16(sp)
    800054cc:	00913423          	sd	s1,8(sp)
    800054d0:	00113c23          	sd	ra,24(sp)
    800054d4:	02010413          	addi	s0,sp,32
    800054d8:	00000097          	auipc	ra,0x0
    800054dc:	0c4080e7          	jalr	196(ra) # 8000559c <cpuid>
    800054e0:	00003497          	auipc	s1,0x3
    800054e4:	49048493          	addi	s1,s1,1168 # 80008970 <started>
    800054e8:	02050263          	beqz	a0,8000550c <system_main+0x48>
    800054ec:	0004a783          	lw	a5,0(s1)
    800054f0:	0007879b          	sext.w	a5,a5
    800054f4:	fe078ce3          	beqz	a5,800054ec <system_main+0x28>
    800054f8:	0ff0000f          	fence
    800054fc:	00003517          	auipc	a0,0x3
    80005500:	0a450513          	addi	a0,a0,164 # 800085a0 <CONSOLE_STATUS+0x590>
    80005504:	00001097          	auipc	ra,0x1
    80005508:	a78080e7          	jalr	-1416(ra) # 80005f7c <panic>
    8000550c:	00001097          	auipc	ra,0x1
    80005510:	9cc080e7          	jalr	-1588(ra) # 80005ed8 <consoleinit>
    80005514:	00001097          	auipc	ra,0x1
    80005518:	158080e7          	jalr	344(ra) # 8000666c <printfinit>
    8000551c:	00003517          	auipc	a0,0x3
    80005520:	c5c50513          	addi	a0,a0,-932 # 80008178 <CONSOLE_STATUS+0x168>
    80005524:	00001097          	auipc	ra,0x1
    80005528:	ab4080e7          	jalr	-1356(ra) # 80005fd8 <__printf>
    8000552c:	00003517          	auipc	a0,0x3
    80005530:	04450513          	addi	a0,a0,68 # 80008570 <CONSOLE_STATUS+0x560>
    80005534:	00001097          	auipc	ra,0x1
    80005538:	aa4080e7          	jalr	-1372(ra) # 80005fd8 <__printf>
    8000553c:	00003517          	auipc	a0,0x3
    80005540:	c3c50513          	addi	a0,a0,-964 # 80008178 <CONSOLE_STATUS+0x168>
    80005544:	00001097          	auipc	ra,0x1
    80005548:	a94080e7          	jalr	-1388(ra) # 80005fd8 <__printf>
    8000554c:	00001097          	auipc	ra,0x1
    80005550:	4ac080e7          	jalr	1196(ra) # 800069f8 <kinit>
    80005554:	00000097          	auipc	ra,0x0
    80005558:	148080e7          	jalr	328(ra) # 8000569c <trapinit>
    8000555c:	00000097          	auipc	ra,0x0
    80005560:	16c080e7          	jalr	364(ra) # 800056c8 <trapinithart>
    80005564:	00000097          	auipc	ra,0x0
    80005568:	5bc080e7          	jalr	1468(ra) # 80005b20 <plicinit>
    8000556c:	00000097          	auipc	ra,0x0
    80005570:	5dc080e7          	jalr	1500(ra) # 80005b48 <plicinithart>
    80005574:	00000097          	auipc	ra,0x0
    80005578:	078080e7          	jalr	120(ra) # 800055ec <userinit>
    8000557c:	0ff0000f          	fence
    80005580:	00100793          	li	a5,1
    80005584:	00003517          	auipc	a0,0x3
    80005588:	00450513          	addi	a0,a0,4 # 80008588 <CONSOLE_STATUS+0x578>
    8000558c:	00f4a023          	sw	a5,0(s1)
    80005590:	00001097          	auipc	ra,0x1
    80005594:	a48080e7          	jalr	-1464(ra) # 80005fd8 <__printf>
    80005598:	0000006f          	j	80005598 <system_main+0xd4>

000000008000559c <cpuid>:
    8000559c:	ff010113          	addi	sp,sp,-16
    800055a0:	00813423          	sd	s0,8(sp)
    800055a4:	01010413          	addi	s0,sp,16
    800055a8:	00020513          	mv	a0,tp
    800055ac:	00813403          	ld	s0,8(sp)
    800055b0:	0005051b          	sext.w	a0,a0
    800055b4:	01010113          	addi	sp,sp,16
    800055b8:	00008067          	ret

00000000800055bc <mycpu>:
    800055bc:	ff010113          	addi	sp,sp,-16
    800055c0:	00813423          	sd	s0,8(sp)
    800055c4:	01010413          	addi	s0,sp,16
    800055c8:	00020793          	mv	a5,tp
    800055cc:	00813403          	ld	s0,8(sp)
    800055d0:	0007879b          	sext.w	a5,a5
    800055d4:	00779793          	slli	a5,a5,0x7
    800055d8:	0000c517          	auipc	a0,0xc
    800055dc:	4d850513          	addi	a0,a0,1240 # 80011ab0 <cpus>
    800055e0:	00f50533          	add	a0,a0,a5
    800055e4:	01010113          	addi	sp,sp,16
    800055e8:	00008067          	ret

00000000800055ec <userinit>:
    800055ec:	ff010113          	addi	sp,sp,-16
    800055f0:	00813423          	sd	s0,8(sp)
    800055f4:	01010413          	addi	s0,sp,16
    800055f8:	00813403          	ld	s0,8(sp)
    800055fc:	01010113          	addi	sp,sp,16
    80005600:	ffffe317          	auipc	t1,0xffffe
    80005604:	27c30067          	jr	636(t1) # 8000387c <main>

0000000080005608 <either_copyout>:
    80005608:	ff010113          	addi	sp,sp,-16
    8000560c:	00813023          	sd	s0,0(sp)
    80005610:	00113423          	sd	ra,8(sp)
    80005614:	01010413          	addi	s0,sp,16
    80005618:	02051663          	bnez	a0,80005644 <either_copyout+0x3c>
    8000561c:	00058513          	mv	a0,a1
    80005620:	00060593          	mv	a1,a2
    80005624:	0006861b          	sext.w	a2,a3
    80005628:	00002097          	auipc	ra,0x2
    8000562c:	c5c080e7          	jalr	-932(ra) # 80007284 <__memmove>
    80005630:	00813083          	ld	ra,8(sp)
    80005634:	00013403          	ld	s0,0(sp)
    80005638:	00000513          	li	a0,0
    8000563c:	01010113          	addi	sp,sp,16
    80005640:	00008067          	ret
    80005644:	00003517          	auipc	a0,0x3
    80005648:	f8450513          	addi	a0,a0,-124 # 800085c8 <CONSOLE_STATUS+0x5b8>
    8000564c:	00001097          	auipc	ra,0x1
    80005650:	930080e7          	jalr	-1744(ra) # 80005f7c <panic>

0000000080005654 <either_copyin>:
    80005654:	ff010113          	addi	sp,sp,-16
    80005658:	00813023          	sd	s0,0(sp)
    8000565c:	00113423          	sd	ra,8(sp)
    80005660:	01010413          	addi	s0,sp,16
    80005664:	02059463          	bnez	a1,8000568c <either_copyin+0x38>
    80005668:	00060593          	mv	a1,a2
    8000566c:	0006861b          	sext.w	a2,a3
    80005670:	00002097          	auipc	ra,0x2
    80005674:	c14080e7          	jalr	-1004(ra) # 80007284 <__memmove>
    80005678:	00813083          	ld	ra,8(sp)
    8000567c:	00013403          	ld	s0,0(sp)
    80005680:	00000513          	li	a0,0
    80005684:	01010113          	addi	sp,sp,16
    80005688:	00008067          	ret
    8000568c:	00003517          	auipc	a0,0x3
    80005690:	f6450513          	addi	a0,a0,-156 # 800085f0 <CONSOLE_STATUS+0x5e0>
    80005694:	00001097          	auipc	ra,0x1
    80005698:	8e8080e7          	jalr	-1816(ra) # 80005f7c <panic>

000000008000569c <trapinit>:
    8000569c:	ff010113          	addi	sp,sp,-16
    800056a0:	00813423          	sd	s0,8(sp)
    800056a4:	01010413          	addi	s0,sp,16
    800056a8:	00813403          	ld	s0,8(sp)
    800056ac:	00003597          	auipc	a1,0x3
    800056b0:	f6c58593          	addi	a1,a1,-148 # 80008618 <CONSOLE_STATUS+0x608>
    800056b4:	0000c517          	auipc	a0,0xc
    800056b8:	47c50513          	addi	a0,a0,1148 # 80011b30 <tickslock>
    800056bc:	01010113          	addi	sp,sp,16
    800056c0:	00001317          	auipc	t1,0x1
    800056c4:	5c830067          	jr	1480(t1) # 80006c88 <initlock>

00000000800056c8 <trapinithart>:
    800056c8:	ff010113          	addi	sp,sp,-16
    800056cc:	00813423          	sd	s0,8(sp)
    800056d0:	01010413          	addi	s0,sp,16
    800056d4:	00000797          	auipc	a5,0x0
    800056d8:	2fc78793          	addi	a5,a5,764 # 800059d0 <kernelvec>
    800056dc:	10579073          	csrw	stvec,a5
    800056e0:	00813403          	ld	s0,8(sp)
    800056e4:	01010113          	addi	sp,sp,16
    800056e8:	00008067          	ret

00000000800056ec <usertrap>:
    800056ec:	ff010113          	addi	sp,sp,-16
    800056f0:	00813423          	sd	s0,8(sp)
    800056f4:	01010413          	addi	s0,sp,16
    800056f8:	00813403          	ld	s0,8(sp)
    800056fc:	01010113          	addi	sp,sp,16
    80005700:	00008067          	ret

0000000080005704 <usertrapret>:
    80005704:	ff010113          	addi	sp,sp,-16
    80005708:	00813423          	sd	s0,8(sp)
    8000570c:	01010413          	addi	s0,sp,16
    80005710:	00813403          	ld	s0,8(sp)
    80005714:	01010113          	addi	sp,sp,16
    80005718:	00008067          	ret

000000008000571c <kerneltrap>:
    8000571c:	fe010113          	addi	sp,sp,-32
    80005720:	00813823          	sd	s0,16(sp)
    80005724:	00113c23          	sd	ra,24(sp)
    80005728:	00913423          	sd	s1,8(sp)
    8000572c:	02010413          	addi	s0,sp,32
    80005730:	142025f3          	csrr	a1,scause
    80005734:	100027f3          	csrr	a5,sstatus
    80005738:	0027f793          	andi	a5,a5,2
    8000573c:	10079c63          	bnez	a5,80005854 <kerneltrap+0x138>
    80005740:	142027f3          	csrr	a5,scause
    80005744:	0207ce63          	bltz	a5,80005780 <kerneltrap+0x64>
    80005748:	00003517          	auipc	a0,0x3
    8000574c:	f1850513          	addi	a0,a0,-232 # 80008660 <CONSOLE_STATUS+0x650>
    80005750:	00001097          	auipc	ra,0x1
    80005754:	888080e7          	jalr	-1912(ra) # 80005fd8 <__printf>
    80005758:	141025f3          	csrr	a1,sepc
    8000575c:	14302673          	csrr	a2,stval
    80005760:	00003517          	auipc	a0,0x3
    80005764:	f1050513          	addi	a0,a0,-240 # 80008670 <CONSOLE_STATUS+0x660>
    80005768:	00001097          	auipc	ra,0x1
    8000576c:	870080e7          	jalr	-1936(ra) # 80005fd8 <__printf>
    80005770:	00003517          	auipc	a0,0x3
    80005774:	f1850513          	addi	a0,a0,-232 # 80008688 <CONSOLE_STATUS+0x678>
    80005778:	00001097          	auipc	ra,0x1
    8000577c:	804080e7          	jalr	-2044(ra) # 80005f7c <panic>
    80005780:	0ff7f713          	andi	a4,a5,255
    80005784:	00900693          	li	a3,9
    80005788:	04d70063          	beq	a4,a3,800057c8 <kerneltrap+0xac>
    8000578c:	fff00713          	li	a4,-1
    80005790:	03f71713          	slli	a4,a4,0x3f
    80005794:	00170713          	addi	a4,a4,1
    80005798:	fae798e3          	bne	a5,a4,80005748 <kerneltrap+0x2c>
    8000579c:	00000097          	auipc	ra,0x0
    800057a0:	e00080e7          	jalr	-512(ra) # 8000559c <cpuid>
    800057a4:	06050663          	beqz	a0,80005810 <kerneltrap+0xf4>
    800057a8:	144027f3          	csrr	a5,sip
    800057ac:	ffd7f793          	andi	a5,a5,-3
    800057b0:	14479073          	csrw	sip,a5
    800057b4:	01813083          	ld	ra,24(sp)
    800057b8:	01013403          	ld	s0,16(sp)
    800057bc:	00813483          	ld	s1,8(sp)
    800057c0:	02010113          	addi	sp,sp,32
    800057c4:	00008067          	ret
    800057c8:	00000097          	auipc	ra,0x0
    800057cc:	3cc080e7          	jalr	972(ra) # 80005b94 <plic_claim>
    800057d0:	00a00793          	li	a5,10
    800057d4:	00050493          	mv	s1,a0
    800057d8:	06f50863          	beq	a0,a5,80005848 <kerneltrap+0x12c>
    800057dc:	fc050ce3          	beqz	a0,800057b4 <kerneltrap+0x98>
    800057e0:	00050593          	mv	a1,a0
    800057e4:	00003517          	auipc	a0,0x3
    800057e8:	e5c50513          	addi	a0,a0,-420 # 80008640 <CONSOLE_STATUS+0x630>
    800057ec:	00000097          	auipc	ra,0x0
    800057f0:	7ec080e7          	jalr	2028(ra) # 80005fd8 <__printf>
    800057f4:	01013403          	ld	s0,16(sp)
    800057f8:	01813083          	ld	ra,24(sp)
    800057fc:	00048513          	mv	a0,s1
    80005800:	00813483          	ld	s1,8(sp)
    80005804:	02010113          	addi	sp,sp,32
    80005808:	00000317          	auipc	t1,0x0
    8000580c:	3c430067          	jr	964(t1) # 80005bcc <plic_complete>
    80005810:	0000c517          	auipc	a0,0xc
    80005814:	32050513          	addi	a0,a0,800 # 80011b30 <tickslock>
    80005818:	00001097          	auipc	ra,0x1
    8000581c:	494080e7          	jalr	1172(ra) # 80006cac <acquire>
    80005820:	00003717          	auipc	a4,0x3
    80005824:	15470713          	addi	a4,a4,340 # 80008974 <ticks>
    80005828:	00072783          	lw	a5,0(a4)
    8000582c:	0000c517          	auipc	a0,0xc
    80005830:	30450513          	addi	a0,a0,772 # 80011b30 <tickslock>
    80005834:	0017879b          	addiw	a5,a5,1
    80005838:	00f72023          	sw	a5,0(a4)
    8000583c:	00001097          	auipc	ra,0x1
    80005840:	53c080e7          	jalr	1340(ra) # 80006d78 <release>
    80005844:	f65ff06f          	j	800057a8 <kerneltrap+0x8c>
    80005848:	00001097          	auipc	ra,0x1
    8000584c:	098080e7          	jalr	152(ra) # 800068e0 <uartintr>
    80005850:	fa5ff06f          	j	800057f4 <kerneltrap+0xd8>
    80005854:	00003517          	auipc	a0,0x3
    80005858:	dcc50513          	addi	a0,a0,-564 # 80008620 <CONSOLE_STATUS+0x610>
    8000585c:	00000097          	auipc	ra,0x0
    80005860:	720080e7          	jalr	1824(ra) # 80005f7c <panic>

0000000080005864 <clockintr>:
    80005864:	fe010113          	addi	sp,sp,-32
    80005868:	00813823          	sd	s0,16(sp)
    8000586c:	00913423          	sd	s1,8(sp)
    80005870:	00113c23          	sd	ra,24(sp)
    80005874:	02010413          	addi	s0,sp,32
    80005878:	0000c497          	auipc	s1,0xc
    8000587c:	2b848493          	addi	s1,s1,696 # 80011b30 <tickslock>
    80005880:	00048513          	mv	a0,s1
    80005884:	00001097          	auipc	ra,0x1
    80005888:	428080e7          	jalr	1064(ra) # 80006cac <acquire>
    8000588c:	00003717          	auipc	a4,0x3
    80005890:	0e870713          	addi	a4,a4,232 # 80008974 <ticks>
    80005894:	00072783          	lw	a5,0(a4)
    80005898:	01013403          	ld	s0,16(sp)
    8000589c:	01813083          	ld	ra,24(sp)
    800058a0:	00048513          	mv	a0,s1
    800058a4:	0017879b          	addiw	a5,a5,1
    800058a8:	00813483          	ld	s1,8(sp)
    800058ac:	00f72023          	sw	a5,0(a4)
    800058b0:	02010113          	addi	sp,sp,32
    800058b4:	00001317          	auipc	t1,0x1
    800058b8:	4c430067          	jr	1220(t1) # 80006d78 <release>

00000000800058bc <devintr>:
    800058bc:	142027f3          	csrr	a5,scause
    800058c0:	00000513          	li	a0,0
    800058c4:	0007c463          	bltz	a5,800058cc <devintr+0x10>
    800058c8:	00008067          	ret
    800058cc:	fe010113          	addi	sp,sp,-32
    800058d0:	00813823          	sd	s0,16(sp)
    800058d4:	00113c23          	sd	ra,24(sp)
    800058d8:	00913423          	sd	s1,8(sp)
    800058dc:	02010413          	addi	s0,sp,32
    800058e0:	0ff7f713          	andi	a4,a5,255
    800058e4:	00900693          	li	a3,9
    800058e8:	04d70c63          	beq	a4,a3,80005940 <devintr+0x84>
    800058ec:	fff00713          	li	a4,-1
    800058f0:	03f71713          	slli	a4,a4,0x3f
    800058f4:	00170713          	addi	a4,a4,1
    800058f8:	00e78c63          	beq	a5,a4,80005910 <devintr+0x54>
    800058fc:	01813083          	ld	ra,24(sp)
    80005900:	01013403          	ld	s0,16(sp)
    80005904:	00813483          	ld	s1,8(sp)
    80005908:	02010113          	addi	sp,sp,32
    8000590c:	00008067          	ret
    80005910:	00000097          	auipc	ra,0x0
    80005914:	c8c080e7          	jalr	-884(ra) # 8000559c <cpuid>
    80005918:	06050663          	beqz	a0,80005984 <devintr+0xc8>
    8000591c:	144027f3          	csrr	a5,sip
    80005920:	ffd7f793          	andi	a5,a5,-3
    80005924:	14479073          	csrw	sip,a5
    80005928:	01813083          	ld	ra,24(sp)
    8000592c:	01013403          	ld	s0,16(sp)
    80005930:	00813483          	ld	s1,8(sp)
    80005934:	00200513          	li	a0,2
    80005938:	02010113          	addi	sp,sp,32
    8000593c:	00008067          	ret
    80005940:	00000097          	auipc	ra,0x0
    80005944:	254080e7          	jalr	596(ra) # 80005b94 <plic_claim>
    80005948:	00a00793          	li	a5,10
    8000594c:	00050493          	mv	s1,a0
    80005950:	06f50663          	beq	a0,a5,800059bc <devintr+0x100>
    80005954:	00100513          	li	a0,1
    80005958:	fa0482e3          	beqz	s1,800058fc <devintr+0x40>
    8000595c:	00048593          	mv	a1,s1
    80005960:	00003517          	auipc	a0,0x3
    80005964:	ce050513          	addi	a0,a0,-800 # 80008640 <CONSOLE_STATUS+0x630>
    80005968:	00000097          	auipc	ra,0x0
    8000596c:	670080e7          	jalr	1648(ra) # 80005fd8 <__printf>
    80005970:	00048513          	mv	a0,s1
    80005974:	00000097          	auipc	ra,0x0
    80005978:	258080e7          	jalr	600(ra) # 80005bcc <plic_complete>
    8000597c:	00100513          	li	a0,1
    80005980:	f7dff06f          	j	800058fc <devintr+0x40>
    80005984:	0000c517          	auipc	a0,0xc
    80005988:	1ac50513          	addi	a0,a0,428 # 80011b30 <tickslock>
    8000598c:	00001097          	auipc	ra,0x1
    80005990:	320080e7          	jalr	800(ra) # 80006cac <acquire>
    80005994:	00003717          	auipc	a4,0x3
    80005998:	fe070713          	addi	a4,a4,-32 # 80008974 <ticks>
    8000599c:	00072783          	lw	a5,0(a4)
    800059a0:	0000c517          	auipc	a0,0xc
    800059a4:	19050513          	addi	a0,a0,400 # 80011b30 <tickslock>
    800059a8:	0017879b          	addiw	a5,a5,1
    800059ac:	00f72023          	sw	a5,0(a4)
    800059b0:	00001097          	auipc	ra,0x1
    800059b4:	3c8080e7          	jalr	968(ra) # 80006d78 <release>
    800059b8:	f65ff06f          	j	8000591c <devintr+0x60>
    800059bc:	00001097          	auipc	ra,0x1
    800059c0:	f24080e7          	jalr	-220(ra) # 800068e0 <uartintr>
    800059c4:	fadff06f          	j	80005970 <devintr+0xb4>
	...

00000000800059d0 <kernelvec>:
    800059d0:	f0010113          	addi	sp,sp,-256
    800059d4:	00113023          	sd	ra,0(sp)
    800059d8:	00213423          	sd	sp,8(sp)
    800059dc:	00313823          	sd	gp,16(sp)
    800059e0:	00413c23          	sd	tp,24(sp)
    800059e4:	02513023          	sd	t0,32(sp)
    800059e8:	02613423          	sd	t1,40(sp)
    800059ec:	02713823          	sd	t2,48(sp)
    800059f0:	02813c23          	sd	s0,56(sp)
    800059f4:	04913023          	sd	s1,64(sp)
    800059f8:	04a13423          	sd	a0,72(sp)
    800059fc:	04b13823          	sd	a1,80(sp)
    80005a00:	04c13c23          	sd	a2,88(sp)
    80005a04:	06d13023          	sd	a3,96(sp)
    80005a08:	06e13423          	sd	a4,104(sp)
    80005a0c:	06f13823          	sd	a5,112(sp)
    80005a10:	07013c23          	sd	a6,120(sp)
    80005a14:	09113023          	sd	a7,128(sp)
    80005a18:	09213423          	sd	s2,136(sp)
    80005a1c:	09313823          	sd	s3,144(sp)
    80005a20:	09413c23          	sd	s4,152(sp)
    80005a24:	0b513023          	sd	s5,160(sp)
    80005a28:	0b613423          	sd	s6,168(sp)
    80005a2c:	0b713823          	sd	s7,176(sp)
    80005a30:	0b813c23          	sd	s8,184(sp)
    80005a34:	0d913023          	sd	s9,192(sp)
    80005a38:	0da13423          	sd	s10,200(sp)
    80005a3c:	0db13823          	sd	s11,208(sp)
    80005a40:	0dc13c23          	sd	t3,216(sp)
    80005a44:	0fd13023          	sd	t4,224(sp)
    80005a48:	0fe13423          	sd	t5,232(sp)
    80005a4c:	0ff13823          	sd	t6,240(sp)
    80005a50:	ccdff0ef          	jal	ra,8000571c <kerneltrap>
    80005a54:	00013083          	ld	ra,0(sp)
    80005a58:	00813103          	ld	sp,8(sp)
    80005a5c:	01013183          	ld	gp,16(sp)
    80005a60:	02013283          	ld	t0,32(sp)
    80005a64:	02813303          	ld	t1,40(sp)
    80005a68:	03013383          	ld	t2,48(sp)
    80005a6c:	03813403          	ld	s0,56(sp)
    80005a70:	04013483          	ld	s1,64(sp)
    80005a74:	04813503          	ld	a0,72(sp)
    80005a78:	05013583          	ld	a1,80(sp)
    80005a7c:	05813603          	ld	a2,88(sp)
    80005a80:	06013683          	ld	a3,96(sp)
    80005a84:	06813703          	ld	a4,104(sp)
    80005a88:	07013783          	ld	a5,112(sp)
    80005a8c:	07813803          	ld	a6,120(sp)
    80005a90:	08013883          	ld	a7,128(sp)
    80005a94:	08813903          	ld	s2,136(sp)
    80005a98:	09013983          	ld	s3,144(sp)
    80005a9c:	09813a03          	ld	s4,152(sp)
    80005aa0:	0a013a83          	ld	s5,160(sp)
    80005aa4:	0a813b03          	ld	s6,168(sp)
    80005aa8:	0b013b83          	ld	s7,176(sp)
    80005aac:	0b813c03          	ld	s8,184(sp)
    80005ab0:	0c013c83          	ld	s9,192(sp)
    80005ab4:	0c813d03          	ld	s10,200(sp)
    80005ab8:	0d013d83          	ld	s11,208(sp)
    80005abc:	0d813e03          	ld	t3,216(sp)
    80005ac0:	0e013e83          	ld	t4,224(sp)
    80005ac4:	0e813f03          	ld	t5,232(sp)
    80005ac8:	0f013f83          	ld	t6,240(sp)
    80005acc:	10010113          	addi	sp,sp,256
    80005ad0:	10200073          	sret
    80005ad4:	00000013          	nop
    80005ad8:	00000013          	nop
    80005adc:	00000013          	nop

0000000080005ae0 <timervec>:
    80005ae0:	34051573          	csrrw	a0,mscratch,a0
    80005ae4:	00b53023          	sd	a1,0(a0)
    80005ae8:	00c53423          	sd	a2,8(a0)
    80005aec:	00d53823          	sd	a3,16(a0)
    80005af0:	01853583          	ld	a1,24(a0)
    80005af4:	02053603          	ld	a2,32(a0)
    80005af8:	0005b683          	ld	a3,0(a1)
    80005afc:	00c686b3          	add	a3,a3,a2
    80005b00:	00d5b023          	sd	a3,0(a1)
    80005b04:	00200593          	li	a1,2
    80005b08:	14459073          	csrw	sip,a1
    80005b0c:	01053683          	ld	a3,16(a0)
    80005b10:	00853603          	ld	a2,8(a0)
    80005b14:	00053583          	ld	a1,0(a0)
    80005b18:	34051573          	csrrw	a0,mscratch,a0
    80005b1c:	30200073          	mret

0000000080005b20 <plicinit>:
    80005b20:	ff010113          	addi	sp,sp,-16
    80005b24:	00813423          	sd	s0,8(sp)
    80005b28:	01010413          	addi	s0,sp,16
    80005b2c:	00813403          	ld	s0,8(sp)
    80005b30:	0c0007b7          	lui	a5,0xc000
    80005b34:	00100713          	li	a4,1
    80005b38:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80005b3c:	00e7a223          	sw	a4,4(a5)
    80005b40:	01010113          	addi	sp,sp,16
    80005b44:	00008067          	ret

0000000080005b48 <plicinithart>:
    80005b48:	ff010113          	addi	sp,sp,-16
    80005b4c:	00813023          	sd	s0,0(sp)
    80005b50:	00113423          	sd	ra,8(sp)
    80005b54:	01010413          	addi	s0,sp,16
    80005b58:	00000097          	auipc	ra,0x0
    80005b5c:	a44080e7          	jalr	-1468(ra) # 8000559c <cpuid>
    80005b60:	0085171b          	slliw	a4,a0,0x8
    80005b64:	0c0027b7          	lui	a5,0xc002
    80005b68:	00e787b3          	add	a5,a5,a4
    80005b6c:	40200713          	li	a4,1026
    80005b70:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80005b74:	00813083          	ld	ra,8(sp)
    80005b78:	00013403          	ld	s0,0(sp)
    80005b7c:	00d5151b          	slliw	a0,a0,0xd
    80005b80:	0c2017b7          	lui	a5,0xc201
    80005b84:	00a78533          	add	a0,a5,a0
    80005b88:	00052023          	sw	zero,0(a0)
    80005b8c:	01010113          	addi	sp,sp,16
    80005b90:	00008067          	ret

0000000080005b94 <plic_claim>:
    80005b94:	ff010113          	addi	sp,sp,-16
    80005b98:	00813023          	sd	s0,0(sp)
    80005b9c:	00113423          	sd	ra,8(sp)
    80005ba0:	01010413          	addi	s0,sp,16
    80005ba4:	00000097          	auipc	ra,0x0
    80005ba8:	9f8080e7          	jalr	-1544(ra) # 8000559c <cpuid>
    80005bac:	00813083          	ld	ra,8(sp)
    80005bb0:	00013403          	ld	s0,0(sp)
    80005bb4:	00d5151b          	slliw	a0,a0,0xd
    80005bb8:	0c2017b7          	lui	a5,0xc201
    80005bbc:	00a78533          	add	a0,a5,a0
    80005bc0:	00452503          	lw	a0,4(a0)
    80005bc4:	01010113          	addi	sp,sp,16
    80005bc8:	00008067          	ret

0000000080005bcc <plic_complete>:
    80005bcc:	fe010113          	addi	sp,sp,-32
    80005bd0:	00813823          	sd	s0,16(sp)
    80005bd4:	00913423          	sd	s1,8(sp)
    80005bd8:	00113c23          	sd	ra,24(sp)
    80005bdc:	02010413          	addi	s0,sp,32
    80005be0:	00050493          	mv	s1,a0
    80005be4:	00000097          	auipc	ra,0x0
    80005be8:	9b8080e7          	jalr	-1608(ra) # 8000559c <cpuid>
    80005bec:	01813083          	ld	ra,24(sp)
    80005bf0:	01013403          	ld	s0,16(sp)
    80005bf4:	00d5179b          	slliw	a5,a0,0xd
    80005bf8:	0c201737          	lui	a4,0xc201
    80005bfc:	00f707b3          	add	a5,a4,a5
    80005c00:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80005c04:	00813483          	ld	s1,8(sp)
    80005c08:	02010113          	addi	sp,sp,32
    80005c0c:	00008067          	ret

0000000080005c10 <consolewrite>:
    80005c10:	fb010113          	addi	sp,sp,-80
    80005c14:	04813023          	sd	s0,64(sp)
    80005c18:	04113423          	sd	ra,72(sp)
    80005c1c:	02913c23          	sd	s1,56(sp)
    80005c20:	03213823          	sd	s2,48(sp)
    80005c24:	03313423          	sd	s3,40(sp)
    80005c28:	03413023          	sd	s4,32(sp)
    80005c2c:	01513c23          	sd	s5,24(sp)
    80005c30:	05010413          	addi	s0,sp,80
    80005c34:	06c05c63          	blez	a2,80005cac <consolewrite+0x9c>
    80005c38:	00060993          	mv	s3,a2
    80005c3c:	00050a13          	mv	s4,a0
    80005c40:	00058493          	mv	s1,a1
    80005c44:	00000913          	li	s2,0
    80005c48:	fff00a93          	li	s5,-1
    80005c4c:	01c0006f          	j	80005c68 <consolewrite+0x58>
    80005c50:	fbf44503          	lbu	a0,-65(s0)
    80005c54:	0019091b          	addiw	s2,s2,1
    80005c58:	00148493          	addi	s1,s1,1
    80005c5c:	00001097          	auipc	ra,0x1
    80005c60:	a9c080e7          	jalr	-1380(ra) # 800066f8 <uartputc>
    80005c64:	03298063          	beq	s3,s2,80005c84 <consolewrite+0x74>
    80005c68:	00048613          	mv	a2,s1
    80005c6c:	00100693          	li	a3,1
    80005c70:	000a0593          	mv	a1,s4
    80005c74:	fbf40513          	addi	a0,s0,-65
    80005c78:	00000097          	auipc	ra,0x0
    80005c7c:	9dc080e7          	jalr	-1572(ra) # 80005654 <either_copyin>
    80005c80:	fd5518e3          	bne	a0,s5,80005c50 <consolewrite+0x40>
    80005c84:	04813083          	ld	ra,72(sp)
    80005c88:	04013403          	ld	s0,64(sp)
    80005c8c:	03813483          	ld	s1,56(sp)
    80005c90:	02813983          	ld	s3,40(sp)
    80005c94:	02013a03          	ld	s4,32(sp)
    80005c98:	01813a83          	ld	s5,24(sp)
    80005c9c:	00090513          	mv	a0,s2
    80005ca0:	03013903          	ld	s2,48(sp)
    80005ca4:	05010113          	addi	sp,sp,80
    80005ca8:	00008067          	ret
    80005cac:	00000913          	li	s2,0
    80005cb0:	fd5ff06f          	j	80005c84 <consolewrite+0x74>

0000000080005cb4 <consoleread>:
    80005cb4:	f9010113          	addi	sp,sp,-112
    80005cb8:	06813023          	sd	s0,96(sp)
    80005cbc:	04913c23          	sd	s1,88(sp)
    80005cc0:	05213823          	sd	s2,80(sp)
    80005cc4:	05313423          	sd	s3,72(sp)
    80005cc8:	05413023          	sd	s4,64(sp)
    80005ccc:	03513c23          	sd	s5,56(sp)
    80005cd0:	03613823          	sd	s6,48(sp)
    80005cd4:	03713423          	sd	s7,40(sp)
    80005cd8:	03813023          	sd	s8,32(sp)
    80005cdc:	06113423          	sd	ra,104(sp)
    80005ce0:	01913c23          	sd	s9,24(sp)
    80005ce4:	07010413          	addi	s0,sp,112
    80005ce8:	00060b93          	mv	s7,a2
    80005cec:	00050913          	mv	s2,a0
    80005cf0:	00058c13          	mv	s8,a1
    80005cf4:	00060b1b          	sext.w	s6,a2
    80005cf8:	0000c497          	auipc	s1,0xc
    80005cfc:	e6048493          	addi	s1,s1,-416 # 80011b58 <cons>
    80005d00:	00400993          	li	s3,4
    80005d04:	fff00a13          	li	s4,-1
    80005d08:	00a00a93          	li	s5,10
    80005d0c:	05705e63          	blez	s7,80005d68 <consoleread+0xb4>
    80005d10:	09c4a703          	lw	a4,156(s1)
    80005d14:	0984a783          	lw	a5,152(s1)
    80005d18:	0007071b          	sext.w	a4,a4
    80005d1c:	08e78463          	beq	a5,a4,80005da4 <consoleread+0xf0>
    80005d20:	07f7f713          	andi	a4,a5,127
    80005d24:	00e48733          	add	a4,s1,a4
    80005d28:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80005d2c:	0017869b          	addiw	a3,a5,1
    80005d30:	08d4ac23          	sw	a3,152(s1)
    80005d34:	00070c9b          	sext.w	s9,a4
    80005d38:	0b370663          	beq	a4,s3,80005de4 <consoleread+0x130>
    80005d3c:	00100693          	li	a3,1
    80005d40:	f9f40613          	addi	a2,s0,-97
    80005d44:	000c0593          	mv	a1,s8
    80005d48:	00090513          	mv	a0,s2
    80005d4c:	f8e40fa3          	sb	a4,-97(s0)
    80005d50:	00000097          	auipc	ra,0x0
    80005d54:	8b8080e7          	jalr	-1864(ra) # 80005608 <either_copyout>
    80005d58:	01450863          	beq	a0,s4,80005d68 <consoleread+0xb4>
    80005d5c:	001c0c13          	addi	s8,s8,1
    80005d60:	fffb8b9b          	addiw	s7,s7,-1
    80005d64:	fb5c94e3          	bne	s9,s5,80005d0c <consoleread+0x58>
    80005d68:	000b851b          	sext.w	a0,s7
    80005d6c:	06813083          	ld	ra,104(sp)
    80005d70:	06013403          	ld	s0,96(sp)
    80005d74:	05813483          	ld	s1,88(sp)
    80005d78:	05013903          	ld	s2,80(sp)
    80005d7c:	04813983          	ld	s3,72(sp)
    80005d80:	04013a03          	ld	s4,64(sp)
    80005d84:	03813a83          	ld	s5,56(sp)
    80005d88:	02813b83          	ld	s7,40(sp)
    80005d8c:	02013c03          	ld	s8,32(sp)
    80005d90:	01813c83          	ld	s9,24(sp)
    80005d94:	40ab053b          	subw	a0,s6,a0
    80005d98:	03013b03          	ld	s6,48(sp)
    80005d9c:	07010113          	addi	sp,sp,112
    80005da0:	00008067          	ret
    80005da4:	00001097          	auipc	ra,0x1
    80005da8:	1d8080e7          	jalr	472(ra) # 80006f7c <push_on>
    80005dac:	0984a703          	lw	a4,152(s1)
    80005db0:	09c4a783          	lw	a5,156(s1)
    80005db4:	0007879b          	sext.w	a5,a5
    80005db8:	fef70ce3          	beq	a4,a5,80005db0 <consoleread+0xfc>
    80005dbc:	00001097          	auipc	ra,0x1
    80005dc0:	234080e7          	jalr	564(ra) # 80006ff0 <pop_on>
    80005dc4:	0984a783          	lw	a5,152(s1)
    80005dc8:	07f7f713          	andi	a4,a5,127
    80005dcc:	00e48733          	add	a4,s1,a4
    80005dd0:	01874703          	lbu	a4,24(a4)
    80005dd4:	0017869b          	addiw	a3,a5,1
    80005dd8:	08d4ac23          	sw	a3,152(s1)
    80005ddc:	00070c9b          	sext.w	s9,a4
    80005de0:	f5371ee3          	bne	a4,s3,80005d3c <consoleread+0x88>
    80005de4:	000b851b          	sext.w	a0,s7
    80005de8:	f96bf2e3          	bgeu	s7,s6,80005d6c <consoleread+0xb8>
    80005dec:	08f4ac23          	sw	a5,152(s1)
    80005df0:	f7dff06f          	j	80005d6c <consoleread+0xb8>

0000000080005df4 <consputc>:
    80005df4:	10000793          	li	a5,256
    80005df8:	00f50663          	beq	a0,a5,80005e04 <consputc+0x10>
    80005dfc:	00001317          	auipc	t1,0x1
    80005e00:	9f430067          	jr	-1548(t1) # 800067f0 <uartputc_sync>
    80005e04:	ff010113          	addi	sp,sp,-16
    80005e08:	00113423          	sd	ra,8(sp)
    80005e0c:	00813023          	sd	s0,0(sp)
    80005e10:	01010413          	addi	s0,sp,16
    80005e14:	00800513          	li	a0,8
    80005e18:	00001097          	auipc	ra,0x1
    80005e1c:	9d8080e7          	jalr	-1576(ra) # 800067f0 <uartputc_sync>
    80005e20:	02000513          	li	a0,32
    80005e24:	00001097          	auipc	ra,0x1
    80005e28:	9cc080e7          	jalr	-1588(ra) # 800067f0 <uartputc_sync>
    80005e2c:	00013403          	ld	s0,0(sp)
    80005e30:	00813083          	ld	ra,8(sp)
    80005e34:	00800513          	li	a0,8
    80005e38:	01010113          	addi	sp,sp,16
    80005e3c:	00001317          	auipc	t1,0x1
    80005e40:	9b430067          	jr	-1612(t1) # 800067f0 <uartputc_sync>

0000000080005e44 <consoleintr>:
    80005e44:	fe010113          	addi	sp,sp,-32
    80005e48:	00813823          	sd	s0,16(sp)
    80005e4c:	00913423          	sd	s1,8(sp)
    80005e50:	01213023          	sd	s2,0(sp)
    80005e54:	00113c23          	sd	ra,24(sp)
    80005e58:	02010413          	addi	s0,sp,32
    80005e5c:	0000c917          	auipc	s2,0xc
    80005e60:	cfc90913          	addi	s2,s2,-772 # 80011b58 <cons>
    80005e64:	00050493          	mv	s1,a0
    80005e68:	00090513          	mv	a0,s2
    80005e6c:	00001097          	auipc	ra,0x1
    80005e70:	e40080e7          	jalr	-448(ra) # 80006cac <acquire>
    80005e74:	02048c63          	beqz	s1,80005eac <consoleintr+0x68>
    80005e78:	0a092783          	lw	a5,160(s2)
    80005e7c:	09892703          	lw	a4,152(s2)
    80005e80:	07f00693          	li	a3,127
    80005e84:	40e7873b          	subw	a4,a5,a4
    80005e88:	02e6e263          	bltu	a3,a4,80005eac <consoleintr+0x68>
    80005e8c:	00d00713          	li	a4,13
    80005e90:	04e48063          	beq	s1,a4,80005ed0 <consoleintr+0x8c>
    80005e94:	07f7f713          	andi	a4,a5,127
    80005e98:	00e90733          	add	a4,s2,a4
    80005e9c:	0017879b          	addiw	a5,a5,1
    80005ea0:	0af92023          	sw	a5,160(s2)
    80005ea4:	00970c23          	sb	s1,24(a4)
    80005ea8:	08f92e23          	sw	a5,156(s2)
    80005eac:	01013403          	ld	s0,16(sp)
    80005eb0:	01813083          	ld	ra,24(sp)
    80005eb4:	00813483          	ld	s1,8(sp)
    80005eb8:	00013903          	ld	s2,0(sp)
    80005ebc:	0000c517          	auipc	a0,0xc
    80005ec0:	c9c50513          	addi	a0,a0,-868 # 80011b58 <cons>
    80005ec4:	02010113          	addi	sp,sp,32
    80005ec8:	00001317          	auipc	t1,0x1
    80005ecc:	eb030067          	jr	-336(t1) # 80006d78 <release>
    80005ed0:	00a00493          	li	s1,10
    80005ed4:	fc1ff06f          	j	80005e94 <consoleintr+0x50>

0000000080005ed8 <consoleinit>:
    80005ed8:	fe010113          	addi	sp,sp,-32
    80005edc:	00113c23          	sd	ra,24(sp)
    80005ee0:	00813823          	sd	s0,16(sp)
    80005ee4:	00913423          	sd	s1,8(sp)
    80005ee8:	02010413          	addi	s0,sp,32
    80005eec:	0000c497          	auipc	s1,0xc
    80005ef0:	c6c48493          	addi	s1,s1,-916 # 80011b58 <cons>
    80005ef4:	00048513          	mv	a0,s1
    80005ef8:	00002597          	auipc	a1,0x2
    80005efc:	7a058593          	addi	a1,a1,1952 # 80008698 <CONSOLE_STATUS+0x688>
    80005f00:	00001097          	auipc	ra,0x1
    80005f04:	d88080e7          	jalr	-632(ra) # 80006c88 <initlock>
    80005f08:	00000097          	auipc	ra,0x0
    80005f0c:	7ac080e7          	jalr	1964(ra) # 800066b4 <uartinit>
    80005f10:	01813083          	ld	ra,24(sp)
    80005f14:	01013403          	ld	s0,16(sp)
    80005f18:	00000797          	auipc	a5,0x0
    80005f1c:	d9c78793          	addi	a5,a5,-612 # 80005cb4 <consoleread>
    80005f20:	0af4bc23          	sd	a5,184(s1)
    80005f24:	00000797          	auipc	a5,0x0
    80005f28:	cec78793          	addi	a5,a5,-788 # 80005c10 <consolewrite>
    80005f2c:	0cf4b023          	sd	a5,192(s1)
    80005f30:	00813483          	ld	s1,8(sp)
    80005f34:	02010113          	addi	sp,sp,32
    80005f38:	00008067          	ret

0000000080005f3c <console_read>:
    80005f3c:	ff010113          	addi	sp,sp,-16
    80005f40:	00813423          	sd	s0,8(sp)
    80005f44:	01010413          	addi	s0,sp,16
    80005f48:	00813403          	ld	s0,8(sp)
    80005f4c:	0000c317          	auipc	t1,0xc
    80005f50:	cc433303          	ld	t1,-828(t1) # 80011c10 <devsw+0x10>
    80005f54:	01010113          	addi	sp,sp,16
    80005f58:	00030067          	jr	t1

0000000080005f5c <console_write>:
    80005f5c:	ff010113          	addi	sp,sp,-16
    80005f60:	00813423          	sd	s0,8(sp)
    80005f64:	01010413          	addi	s0,sp,16
    80005f68:	00813403          	ld	s0,8(sp)
    80005f6c:	0000c317          	auipc	t1,0xc
    80005f70:	cac33303          	ld	t1,-852(t1) # 80011c18 <devsw+0x18>
    80005f74:	01010113          	addi	sp,sp,16
    80005f78:	00030067          	jr	t1

0000000080005f7c <panic>:
    80005f7c:	fe010113          	addi	sp,sp,-32
    80005f80:	00113c23          	sd	ra,24(sp)
    80005f84:	00813823          	sd	s0,16(sp)
    80005f88:	00913423          	sd	s1,8(sp)
    80005f8c:	02010413          	addi	s0,sp,32
    80005f90:	00050493          	mv	s1,a0
    80005f94:	00002517          	auipc	a0,0x2
    80005f98:	70c50513          	addi	a0,a0,1804 # 800086a0 <CONSOLE_STATUS+0x690>
    80005f9c:	0000c797          	auipc	a5,0xc
    80005fa0:	d007ae23          	sw	zero,-740(a5) # 80011cb8 <pr+0x18>
    80005fa4:	00000097          	auipc	ra,0x0
    80005fa8:	034080e7          	jalr	52(ra) # 80005fd8 <__printf>
    80005fac:	00048513          	mv	a0,s1
    80005fb0:	00000097          	auipc	ra,0x0
    80005fb4:	028080e7          	jalr	40(ra) # 80005fd8 <__printf>
    80005fb8:	00002517          	auipc	a0,0x2
    80005fbc:	1c050513          	addi	a0,a0,448 # 80008178 <CONSOLE_STATUS+0x168>
    80005fc0:	00000097          	auipc	ra,0x0
    80005fc4:	018080e7          	jalr	24(ra) # 80005fd8 <__printf>
    80005fc8:	00100793          	li	a5,1
    80005fcc:	00003717          	auipc	a4,0x3
    80005fd0:	9af72623          	sw	a5,-1620(a4) # 80008978 <panicked>
    80005fd4:	0000006f          	j	80005fd4 <panic+0x58>

0000000080005fd8 <__printf>:
    80005fd8:	f3010113          	addi	sp,sp,-208
    80005fdc:	08813023          	sd	s0,128(sp)
    80005fe0:	07313423          	sd	s3,104(sp)
    80005fe4:	09010413          	addi	s0,sp,144
    80005fe8:	05813023          	sd	s8,64(sp)
    80005fec:	08113423          	sd	ra,136(sp)
    80005ff0:	06913c23          	sd	s1,120(sp)
    80005ff4:	07213823          	sd	s2,112(sp)
    80005ff8:	07413023          	sd	s4,96(sp)
    80005ffc:	05513c23          	sd	s5,88(sp)
    80006000:	05613823          	sd	s6,80(sp)
    80006004:	05713423          	sd	s7,72(sp)
    80006008:	03913c23          	sd	s9,56(sp)
    8000600c:	03a13823          	sd	s10,48(sp)
    80006010:	03b13423          	sd	s11,40(sp)
    80006014:	0000c317          	auipc	t1,0xc
    80006018:	c8c30313          	addi	t1,t1,-884 # 80011ca0 <pr>
    8000601c:	01832c03          	lw	s8,24(t1)
    80006020:	00b43423          	sd	a1,8(s0)
    80006024:	00c43823          	sd	a2,16(s0)
    80006028:	00d43c23          	sd	a3,24(s0)
    8000602c:	02e43023          	sd	a4,32(s0)
    80006030:	02f43423          	sd	a5,40(s0)
    80006034:	03043823          	sd	a6,48(s0)
    80006038:	03143c23          	sd	a7,56(s0)
    8000603c:	00050993          	mv	s3,a0
    80006040:	4a0c1663          	bnez	s8,800064ec <__printf+0x514>
    80006044:	60098c63          	beqz	s3,8000665c <__printf+0x684>
    80006048:	0009c503          	lbu	a0,0(s3)
    8000604c:	00840793          	addi	a5,s0,8
    80006050:	f6f43c23          	sd	a5,-136(s0)
    80006054:	00000493          	li	s1,0
    80006058:	22050063          	beqz	a0,80006278 <__printf+0x2a0>
    8000605c:	00002a37          	lui	s4,0x2
    80006060:	00018ab7          	lui	s5,0x18
    80006064:	000f4b37          	lui	s6,0xf4
    80006068:	00989bb7          	lui	s7,0x989
    8000606c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80006070:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80006074:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80006078:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000607c:	00148c9b          	addiw	s9,s1,1
    80006080:	02500793          	li	a5,37
    80006084:	01998933          	add	s2,s3,s9
    80006088:	38f51263          	bne	a0,a5,8000640c <__printf+0x434>
    8000608c:	00094783          	lbu	a5,0(s2)
    80006090:	00078c9b          	sext.w	s9,a5
    80006094:	1e078263          	beqz	a5,80006278 <__printf+0x2a0>
    80006098:	0024849b          	addiw	s1,s1,2
    8000609c:	07000713          	li	a4,112
    800060a0:	00998933          	add	s2,s3,s1
    800060a4:	38e78a63          	beq	a5,a4,80006438 <__printf+0x460>
    800060a8:	20f76863          	bltu	a4,a5,800062b8 <__printf+0x2e0>
    800060ac:	42a78863          	beq	a5,a0,800064dc <__printf+0x504>
    800060b0:	06400713          	li	a4,100
    800060b4:	40e79663          	bne	a5,a4,800064c0 <__printf+0x4e8>
    800060b8:	f7843783          	ld	a5,-136(s0)
    800060bc:	0007a603          	lw	a2,0(a5)
    800060c0:	00878793          	addi	a5,a5,8
    800060c4:	f6f43c23          	sd	a5,-136(s0)
    800060c8:	42064a63          	bltz	a2,800064fc <__printf+0x524>
    800060cc:	00a00713          	li	a4,10
    800060d0:	02e677bb          	remuw	a5,a2,a4
    800060d4:	00002d97          	auipc	s11,0x2
    800060d8:	5f4d8d93          	addi	s11,s11,1524 # 800086c8 <digits>
    800060dc:	00900593          	li	a1,9
    800060e0:	0006051b          	sext.w	a0,a2
    800060e4:	00000c93          	li	s9,0
    800060e8:	02079793          	slli	a5,a5,0x20
    800060ec:	0207d793          	srli	a5,a5,0x20
    800060f0:	00fd87b3          	add	a5,s11,a5
    800060f4:	0007c783          	lbu	a5,0(a5)
    800060f8:	02e656bb          	divuw	a3,a2,a4
    800060fc:	f8f40023          	sb	a5,-128(s0)
    80006100:	14c5d863          	bge	a1,a2,80006250 <__printf+0x278>
    80006104:	06300593          	li	a1,99
    80006108:	00100c93          	li	s9,1
    8000610c:	02e6f7bb          	remuw	a5,a3,a4
    80006110:	02079793          	slli	a5,a5,0x20
    80006114:	0207d793          	srli	a5,a5,0x20
    80006118:	00fd87b3          	add	a5,s11,a5
    8000611c:	0007c783          	lbu	a5,0(a5)
    80006120:	02e6d73b          	divuw	a4,a3,a4
    80006124:	f8f400a3          	sb	a5,-127(s0)
    80006128:	12a5f463          	bgeu	a1,a0,80006250 <__printf+0x278>
    8000612c:	00a00693          	li	a3,10
    80006130:	00900593          	li	a1,9
    80006134:	02d777bb          	remuw	a5,a4,a3
    80006138:	02079793          	slli	a5,a5,0x20
    8000613c:	0207d793          	srli	a5,a5,0x20
    80006140:	00fd87b3          	add	a5,s11,a5
    80006144:	0007c503          	lbu	a0,0(a5)
    80006148:	02d757bb          	divuw	a5,a4,a3
    8000614c:	f8a40123          	sb	a0,-126(s0)
    80006150:	48e5f263          	bgeu	a1,a4,800065d4 <__printf+0x5fc>
    80006154:	06300513          	li	a0,99
    80006158:	02d7f5bb          	remuw	a1,a5,a3
    8000615c:	02059593          	slli	a1,a1,0x20
    80006160:	0205d593          	srli	a1,a1,0x20
    80006164:	00bd85b3          	add	a1,s11,a1
    80006168:	0005c583          	lbu	a1,0(a1)
    8000616c:	02d7d7bb          	divuw	a5,a5,a3
    80006170:	f8b401a3          	sb	a1,-125(s0)
    80006174:	48e57263          	bgeu	a0,a4,800065f8 <__printf+0x620>
    80006178:	3e700513          	li	a0,999
    8000617c:	02d7f5bb          	remuw	a1,a5,a3
    80006180:	02059593          	slli	a1,a1,0x20
    80006184:	0205d593          	srli	a1,a1,0x20
    80006188:	00bd85b3          	add	a1,s11,a1
    8000618c:	0005c583          	lbu	a1,0(a1)
    80006190:	02d7d7bb          	divuw	a5,a5,a3
    80006194:	f8b40223          	sb	a1,-124(s0)
    80006198:	46e57663          	bgeu	a0,a4,80006604 <__printf+0x62c>
    8000619c:	02d7f5bb          	remuw	a1,a5,a3
    800061a0:	02059593          	slli	a1,a1,0x20
    800061a4:	0205d593          	srli	a1,a1,0x20
    800061a8:	00bd85b3          	add	a1,s11,a1
    800061ac:	0005c583          	lbu	a1,0(a1)
    800061b0:	02d7d7bb          	divuw	a5,a5,a3
    800061b4:	f8b402a3          	sb	a1,-123(s0)
    800061b8:	46ea7863          	bgeu	s4,a4,80006628 <__printf+0x650>
    800061bc:	02d7f5bb          	remuw	a1,a5,a3
    800061c0:	02059593          	slli	a1,a1,0x20
    800061c4:	0205d593          	srli	a1,a1,0x20
    800061c8:	00bd85b3          	add	a1,s11,a1
    800061cc:	0005c583          	lbu	a1,0(a1)
    800061d0:	02d7d7bb          	divuw	a5,a5,a3
    800061d4:	f8b40323          	sb	a1,-122(s0)
    800061d8:	3eeaf863          	bgeu	s5,a4,800065c8 <__printf+0x5f0>
    800061dc:	02d7f5bb          	remuw	a1,a5,a3
    800061e0:	02059593          	slli	a1,a1,0x20
    800061e4:	0205d593          	srli	a1,a1,0x20
    800061e8:	00bd85b3          	add	a1,s11,a1
    800061ec:	0005c583          	lbu	a1,0(a1)
    800061f0:	02d7d7bb          	divuw	a5,a5,a3
    800061f4:	f8b403a3          	sb	a1,-121(s0)
    800061f8:	42eb7e63          	bgeu	s6,a4,80006634 <__printf+0x65c>
    800061fc:	02d7f5bb          	remuw	a1,a5,a3
    80006200:	02059593          	slli	a1,a1,0x20
    80006204:	0205d593          	srli	a1,a1,0x20
    80006208:	00bd85b3          	add	a1,s11,a1
    8000620c:	0005c583          	lbu	a1,0(a1)
    80006210:	02d7d7bb          	divuw	a5,a5,a3
    80006214:	f8b40423          	sb	a1,-120(s0)
    80006218:	42ebfc63          	bgeu	s7,a4,80006650 <__printf+0x678>
    8000621c:	02079793          	slli	a5,a5,0x20
    80006220:	0207d793          	srli	a5,a5,0x20
    80006224:	00fd8db3          	add	s11,s11,a5
    80006228:	000dc703          	lbu	a4,0(s11)
    8000622c:	00a00793          	li	a5,10
    80006230:	00900c93          	li	s9,9
    80006234:	f8e404a3          	sb	a4,-119(s0)
    80006238:	00065c63          	bgez	a2,80006250 <__printf+0x278>
    8000623c:	f9040713          	addi	a4,s0,-112
    80006240:	00f70733          	add	a4,a4,a5
    80006244:	02d00693          	li	a3,45
    80006248:	fed70823          	sb	a3,-16(a4)
    8000624c:	00078c93          	mv	s9,a5
    80006250:	f8040793          	addi	a5,s0,-128
    80006254:	01978cb3          	add	s9,a5,s9
    80006258:	f7f40d13          	addi	s10,s0,-129
    8000625c:	000cc503          	lbu	a0,0(s9)
    80006260:	fffc8c93          	addi	s9,s9,-1
    80006264:	00000097          	auipc	ra,0x0
    80006268:	b90080e7          	jalr	-1136(ra) # 80005df4 <consputc>
    8000626c:	ffac98e3          	bne	s9,s10,8000625c <__printf+0x284>
    80006270:	00094503          	lbu	a0,0(s2)
    80006274:	e00514e3          	bnez	a0,8000607c <__printf+0xa4>
    80006278:	1a0c1663          	bnez	s8,80006424 <__printf+0x44c>
    8000627c:	08813083          	ld	ra,136(sp)
    80006280:	08013403          	ld	s0,128(sp)
    80006284:	07813483          	ld	s1,120(sp)
    80006288:	07013903          	ld	s2,112(sp)
    8000628c:	06813983          	ld	s3,104(sp)
    80006290:	06013a03          	ld	s4,96(sp)
    80006294:	05813a83          	ld	s5,88(sp)
    80006298:	05013b03          	ld	s6,80(sp)
    8000629c:	04813b83          	ld	s7,72(sp)
    800062a0:	04013c03          	ld	s8,64(sp)
    800062a4:	03813c83          	ld	s9,56(sp)
    800062a8:	03013d03          	ld	s10,48(sp)
    800062ac:	02813d83          	ld	s11,40(sp)
    800062b0:	0d010113          	addi	sp,sp,208
    800062b4:	00008067          	ret
    800062b8:	07300713          	li	a4,115
    800062bc:	1ce78a63          	beq	a5,a4,80006490 <__printf+0x4b8>
    800062c0:	07800713          	li	a4,120
    800062c4:	1ee79e63          	bne	a5,a4,800064c0 <__printf+0x4e8>
    800062c8:	f7843783          	ld	a5,-136(s0)
    800062cc:	0007a703          	lw	a4,0(a5)
    800062d0:	00878793          	addi	a5,a5,8
    800062d4:	f6f43c23          	sd	a5,-136(s0)
    800062d8:	28074263          	bltz	a4,8000655c <__printf+0x584>
    800062dc:	00002d97          	auipc	s11,0x2
    800062e0:	3ecd8d93          	addi	s11,s11,1004 # 800086c8 <digits>
    800062e4:	00f77793          	andi	a5,a4,15
    800062e8:	00fd87b3          	add	a5,s11,a5
    800062ec:	0007c683          	lbu	a3,0(a5)
    800062f0:	00f00613          	li	a2,15
    800062f4:	0007079b          	sext.w	a5,a4
    800062f8:	f8d40023          	sb	a3,-128(s0)
    800062fc:	0047559b          	srliw	a1,a4,0x4
    80006300:	0047569b          	srliw	a3,a4,0x4
    80006304:	00000c93          	li	s9,0
    80006308:	0ee65063          	bge	a2,a4,800063e8 <__printf+0x410>
    8000630c:	00f6f693          	andi	a3,a3,15
    80006310:	00dd86b3          	add	a3,s11,a3
    80006314:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80006318:	0087d79b          	srliw	a5,a5,0x8
    8000631c:	00100c93          	li	s9,1
    80006320:	f8d400a3          	sb	a3,-127(s0)
    80006324:	0cb67263          	bgeu	a2,a1,800063e8 <__printf+0x410>
    80006328:	00f7f693          	andi	a3,a5,15
    8000632c:	00dd86b3          	add	a3,s11,a3
    80006330:	0006c583          	lbu	a1,0(a3)
    80006334:	00f00613          	li	a2,15
    80006338:	0047d69b          	srliw	a3,a5,0x4
    8000633c:	f8b40123          	sb	a1,-126(s0)
    80006340:	0047d593          	srli	a1,a5,0x4
    80006344:	28f67e63          	bgeu	a2,a5,800065e0 <__printf+0x608>
    80006348:	00f6f693          	andi	a3,a3,15
    8000634c:	00dd86b3          	add	a3,s11,a3
    80006350:	0006c503          	lbu	a0,0(a3)
    80006354:	0087d813          	srli	a6,a5,0x8
    80006358:	0087d69b          	srliw	a3,a5,0x8
    8000635c:	f8a401a3          	sb	a0,-125(s0)
    80006360:	28b67663          	bgeu	a2,a1,800065ec <__printf+0x614>
    80006364:	00f6f693          	andi	a3,a3,15
    80006368:	00dd86b3          	add	a3,s11,a3
    8000636c:	0006c583          	lbu	a1,0(a3)
    80006370:	00c7d513          	srli	a0,a5,0xc
    80006374:	00c7d69b          	srliw	a3,a5,0xc
    80006378:	f8b40223          	sb	a1,-124(s0)
    8000637c:	29067a63          	bgeu	a2,a6,80006610 <__printf+0x638>
    80006380:	00f6f693          	andi	a3,a3,15
    80006384:	00dd86b3          	add	a3,s11,a3
    80006388:	0006c583          	lbu	a1,0(a3)
    8000638c:	0107d813          	srli	a6,a5,0x10
    80006390:	0107d69b          	srliw	a3,a5,0x10
    80006394:	f8b402a3          	sb	a1,-123(s0)
    80006398:	28a67263          	bgeu	a2,a0,8000661c <__printf+0x644>
    8000639c:	00f6f693          	andi	a3,a3,15
    800063a0:	00dd86b3          	add	a3,s11,a3
    800063a4:	0006c683          	lbu	a3,0(a3)
    800063a8:	0147d79b          	srliw	a5,a5,0x14
    800063ac:	f8d40323          	sb	a3,-122(s0)
    800063b0:	21067663          	bgeu	a2,a6,800065bc <__printf+0x5e4>
    800063b4:	02079793          	slli	a5,a5,0x20
    800063b8:	0207d793          	srli	a5,a5,0x20
    800063bc:	00fd8db3          	add	s11,s11,a5
    800063c0:	000dc683          	lbu	a3,0(s11)
    800063c4:	00800793          	li	a5,8
    800063c8:	00700c93          	li	s9,7
    800063cc:	f8d403a3          	sb	a3,-121(s0)
    800063d0:	00075c63          	bgez	a4,800063e8 <__printf+0x410>
    800063d4:	f9040713          	addi	a4,s0,-112
    800063d8:	00f70733          	add	a4,a4,a5
    800063dc:	02d00693          	li	a3,45
    800063e0:	fed70823          	sb	a3,-16(a4)
    800063e4:	00078c93          	mv	s9,a5
    800063e8:	f8040793          	addi	a5,s0,-128
    800063ec:	01978cb3          	add	s9,a5,s9
    800063f0:	f7f40d13          	addi	s10,s0,-129
    800063f4:	000cc503          	lbu	a0,0(s9)
    800063f8:	fffc8c93          	addi	s9,s9,-1
    800063fc:	00000097          	auipc	ra,0x0
    80006400:	9f8080e7          	jalr	-1544(ra) # 80005df4 <consputc>
    80006404:	ff9d18e3          	bne	s10,s9,800063f4 <__printf+0x41c>
    80006408:	0100006f          	j	80006418 <__printf+0x440>
    8000640c:	00000097          	auipc	ra,0x0
    80006410:	9e8080e7          	jalr	-1560(ra) # 80005df4 <consputc>
    80006414:	000c8493          	mv	s1,s9
    80006418:	00094503          	lbu	a0,0(s2)
    8000641c:	c60510e3          	bnez	a0,8000607c <__printf+0xa4>
    80006420:	e40c0ee3          	beqz	s8,8000627c <__printf+0x2a4>
    80006424:	0000c517          	auipc	a0,0xc
    80006428:	87c50513          	addi	a0,a0,-1924 # 80011ca0 <pr>
    8000642c:	00001097          	auipc	ra,0x1
    80006430:	94c080e7          	jalr	-1716(ra) # 80006d78 <release>
    80006434:	e49ff06f          	j	8000627c <__printf+0x2a4>
    80006438:	f7843783          	ld	a5,-136(s0)
    8000643c:	03000513          	li	a0,48
    80006440:	01000d13          	li	s10,16
    80006444:	00878713          	addi	a4,a5,8
    80006448:	0007bc83          	ld	s9,0(a5)
    8000644c:	f6e43c23          	sd	a4,-136(s0)
    80006450:	00000097          	auipc	ra,0x0
    80006454:	9a4080e7          	jalr	-1628(ra) # 80005df4 <consputc>
    80006458:	07800513          	li	a0,120
    8000645c:	00000097          	auipc	ra,0x0
    80006460:	998080e7          	jalr	-1640(ra) # 80005df4 <consputc>
    80006464:	00002d97          	auipc	s11,0x2
    80006468:	264d8d93          	addi	s11,s11,612 # 800086c8 <digits>
    8000646c:	03ccd793          	srli	a5,s9,0x3c
    80006470:	00fd87b3          	add	a5,s11,a5
    80006474:	0007c503          	lbu	a0,0(a5)
    80006478:	fffd0d1b          	addiw	s10,s10,-1
    8000647c:	004c9c93          	slli	s9,s9,0x4
    80006480:	00000097          	auipc	ra,0x0
    80006484:	974080e7          	jalr	-1676(ra) # 80005df4 <consputc>
    80006488:	fe0d12e3          	bnez	s10,8000646c <__printf+0x494>
    8000648c:	f8dff06f          	j	80006418 <__printf+0x440>
    80006490:	f7843783          	ld	a5,-136(s0)
    80006494:	0007bc83          	ld	s9,0(a5)
    80006498:	00878793          	addi	a5,a5,8
    8000649c:	f6f43c23          	sd	a5,-136(s0)
    800064a0:	000c9a63          	bnez	s9,800064b4 <__printf+0x4dc>
    800064a4:	1080006f          	j	800065ac <__printf+0x5d4>
    800064a8:	001c8c93          	addi	s9,s9,1
    800064ac:	00000097          	auipc	ra,0x0
    800064b0:	948080e7          	jalr	-1720(ra) # 80005df4 <consputc>
    800064b4:	000cc503          	lbu	a0,0(s9)
    800064b8:	fe0518e3          	bnez	a0,800064a8 <__printf+0x4d0>
    800064bc:	f5dff06f          	j	80006418 <__printf+0x440>
    800064c0:	02500513          	li	a0,37
    800064c4:	00000097          	auipc	ra,0x0
    800064c8:	930080e7          	jalr	-1744(ra) # 80005df4 <consputc>
    800064cc:	000c8513          	mv	a0,s9
    800064d0:	00000097          	auipc	ra,0x0
    800064d4:	924080e7          	jalr	-1756(ra) # 80005df4 <consputc>
    800064d8:	f41ff06f          	j	80006418 <__printf+0x440>
    800064dc:	02500513          	li	a0,37
    800064e0:	00000097          	auipc	ra,0x0
    800064e4:	914080e7          	jalr	-1772(ra) # 80005df4 <consputc>
    800064e8:	f31ff06f          	j	80006418 <__printf+0x440>
    800064ec:	00030513          	mv	a0,t1
    800064f0:	00000097          	auipc	ra,0x0
    800064f4:	7bc080e7          	jalr	1980(ra) # 80006cac <acquire>
    800064f8:	b4dff06f          	j	80006044 <__printf+0x6c>
    800064fc:	40c0053b          	negw	a0,a2
    80006500:	00a00713          	li	a4,10
    80006504:	02e576bb          	remuw	a3,a0,a4
    80006508:	00002d97          	auipc	s11,0x2
    8000650c:	1c0d8d93          	addi	s11,s11,448 # 800086c8 <digits>
    80006510:	ff700593          	li	a1,-9
    80006514:	02069693          	slli	a3,a3,0x20
    80006518:	0206d693          	srli	a3,a3,0x20
    8000651c:	00dd86b3          	add	a3,s11,a3
    80006520:	0006c683          	lbu	a3,0(a3)
    80006524:	02e557bb          	divuw	a5,a0,a4
    80006528:	f8d40023          	sb	a3,-128(s0)
    8000652c:	10b65e63          	bge	a2,a1,80006648 <__printf+0x670>
    80006530:	06300593          	li	a1,99
    80006534:	02e7f6bb          	remuw	a3,a5,a4
    80006538:	02069693          	slli	a3,a3,0x20
    8000653c:	0206d693          	srli	a3,a3,0x20
    80006540:	00dd86b3          	add	a3,s11,a3
    80006544:	0006c683          	lbu	a3,0(a3)
    80006548:	02e7d73b          	divuw	a4,a5,a4
    8000654c:	00200793          	li	a5,2
    80006550:	f8d400a3          	sb	a3,-127(s0)
    80006554:	bca5ece3          	bltu	a1,a0,8000612c <__printf+0x154>
    80006558:	ce5ff06f          	j	8000623c <__printf+0x264>
    8000655c:	40e007bb          	negw	a5,a4
    80006560:	00002d97          	auipc	s11,0x2
    80006564:	168d8d93          	addi	s11,s11,360 # 800086c8 <digits>
    80006568:	00f7f693          	andi	a3,a5,15
    8000656c:	00dd86b3          	add	a3,s11,a3
    80006570:	0006c583          	lbu	a1,0(a3)
    80006574:	ff100613          	li	a2,-15
    80006578:	0047d69b          	srliw	a3,a5,0x4
    8000657c:	f8b40023          	sb	a1,-128(s0)
    80006580:	0047d59b          	srliw	a1,a5,0x4
    80006584:	0ac75e63          	bge	a4,a2,80006640 <__printf+0x668>
    80006588:	00f6f693          	andi	a3,a3,15
    8000658c:	00dd86b3          	add	a3,s11,a3
    80006590:	0006c603          	lbu	a2,0(a3)
    80006594:	00f00693          	li	a3,15
    80006598:	0087d79b          	srliw	a5,a5,0x8
    8000659c:	f8c400a3          	sb	a2,-127(s0)
    800065a0:	d8b6e4e3          	bltu	a3,a1,80006328 <__printf+0x350>
    800065a4:	00200793          	li	a5,2
    800065a8:	e2dff06f          	j	800063d4 <__printf+0x3fc>
    800065ac:	00002c97          	auipc	s9,0x2
    800065b0:	0fcc8c93          	addi	s9,s9,252 # 800086a8 <CONSOLE_STATUS+0x698>
    800065b4:	02800513          	li	a0,40
    800065b8:	ef1ff06f          	j	800064a8 <__printf+0x4d0>
    800065bc:	00700793          	li	a5,7
    800065c0:	00600c93          	li	s9,6
    800065c4:	e0dff06f          	j	800063d0 <__printf+0x3f8>
    800065c8:	00700793          	li	a5,7
    800065cc:	00600c93          	li	s9,6
    800065d0:	c69ff06f          	j	80006238 <__printf+0x260>
    800065d4:	00300793          	li	a5,3
    800065d8:	00200c93          	li	s9,2
    800065dc:	c5dff06f          	j	80006238 <__printf+0x260>
    800065e0:	00300793          	li	a5,3
    800065e4:	00200c93          	li	s9,2
    800065e8:	de9ff06f          	j	800063d0 <__printf+0x3f8>
    800065ec:	00400793          	li	a5,4
    800065f0:	00300c93          	li	s9,3
    800065f4:	dddff06f          	j	800063d0 <__printf+0x3f8>
    800065f8:	00400793          	li	a5,4
    800065fc:	00300c93          	li	s9,3
    80006600:	c39ff06f          	j	80006238 <__printf+0x260>
    80006604:	00500793          	li	a5,5
    80006608:	00400c93          	li	s9,4
    8000660c:	c2dff06f          	j	80006238 <__printf+0x260>
    80006610:	00500793          	li	a5,5
    80006614:	00400c93          	li	s9,4
    80006618:	db9ff06f          	j	800063d0 <__printf+0x3f8>
    8000661c:	00600793          	li	a5,6
    80006620:	00500c93          	li	s9,5
    80006624:	dadff06f          	j	800063d0 <__printf+0x3f8>
    80006628:	00600793          	li	a5,6
    8000662c:	00500c93          	li	s9,5
    80006630:	c09ff06f          	j	80006238 <__printf+0x260>
    80006634:	00800793          	li	a5,8
    80006638:	00700c93          	li	s9,7
    8000663c:	bfdff06f          	j	80006238 <__printf+0x260>
    80006640:	00100793          	li	a5,1
    80006644:	d91ff06f          	j	800063d4 <__printf+0x3fc>
    80006648:	00100793          	li	a5,1
    8000664c:	bf1ff06f          	j	8000623c <__printf+0x264>
    80006650:	00900793          	li	a5,9
    80006654:	00800c93          	li	s9,8
    80006658:	be1ff06f          	j	80006238 <__printf+0x260>
    8000665c:	00002517          	auipc	a0,0x2
    80006660:	05450513          	addi	a0,a0,84 # 800086b0 <CONSOLE_STATUS+0x6a0>
    80006664:	00000097          	auipc	ra,0x0
    80006668:	918080e7          	jalr	-1768(ra) # 80005f7c <panic>

000000008000666c <printfinit>:
    8000666c:	fe010113          	addi	sp,sp,-32
    80006670:	00813823          	sd	s0,16(sp)
    80006674:	00913423          	sd	s1,8(sp)
    80006678:	00113c23          	sd	ra,24(sp)
    8000667c:	02010413          	addi	s0,sp,32
    80006680:	0000b497          	auipc	s1,0xb
    80006684:	62048493          	addi	s1,s1,1568 # 80011ca0 <pr>
    80006688:	00048513          	mv	a0,s1
    8000668c:	00002597          	auipc	a1,0x2
    80006690:	03458593          	addi	a1,a1,52 # 800086c0 <CONSOLE_STATUS+0x6b0>
    80006694:	00000097          	auipc	ra,0x0
    80006698:	5f4080e7          	jalr	1524(ra) # 80006c88 <initlock>
    8000669c:	01813083          	ld	ra,24(sp)
    800066a0:	01013403          	ld	s0,16(sp)
    800066a4:	0004ac23          	sw	zero,24(s1)
    800066a8:	00813483          	ld	s1,8(sp)
    800066ac:	02010113          	addi	sp,sp,32
    800066b0:	00008067          	ret

00000000800066b4 <uartinit>:
    800066b4:	ff010113          	addi	sp,sp,-16
    800066b8:	00813423          	sd	s0,8(sp)
    800066bc:	01010413          	addi	s0,sp,16
    800066c0:	100007b7          	lui	a5,0x10000
    800066c4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800066c8:	f8000713          	li	a4,-128
    800066cc:	00e781a3          	sb	a4,3(a5)
    800066d0:	00300713          	li	a4,3
    800066d4:	00e78023          	sb	a4,0(a5)
    800066d8:	000780a3          	sb	zero,1(a5)
    800066dc:	00e781a3          	sb	a4,3(a5)
    800066e0:	00700693          	li	a3,7
    800066e4:	00d78123          	sb	a3,2(a5)
    800066e8:	00e780a3          	sb	a4,1(a5)
    800066ec:	00813403          	ld	s0,8(sp)
    800066f0:	01010113          	addi	sp,sp,16
    800066f4:	00008067          	ret

00000000800066f8 <uartputc>:
    800066f8:	00002797          	auipc	a5,0x2
    800066fc:	2807a783          	lw	a5,640(a5) # 80008978 <panicked>
    80006700:	00078463          	beqz	a5,80006708 <uartputc+0x10>
    80006704:	0000006f          	j	80006704 <uartputc+0xc>
    80006708:	fd010113          	addi	sp,sp,-48
    8000670c:	02813023          	sd	s0,32(sp)
    80006710:	00913c23          	sd	s1,24(sp)
    80006714:	01213823          	sd	s2,16(sp)
    80006718:	01313423          	sd	s3,8(sp)
    8000671c:	02113423          	sd	ra,40(sp)
    80006720:	03010413          	addi	s0,sp,48
    80006724:	00002917          	auipc	s2,0x2
    80006728:	25c90913          	addi	s2,s2,604 # 80008980 <uart_tx_r>
    8000672c:	00093783          	ld	a5,0(s2)
    80006730:	00002497          	auipc	s1,0x2
    80006734:	25848493          	addi	s1,s1,600 # 80008988 <uart_tx_w>
    80006738:	0004b703          	ld	a4,0(s1)
    8000673c:	02078693          	addi	a3,a5,32
    80006740:	00050993          	mv	s3,a0
    80006744:	02e69c63          	bne	a3,a4,8000677c <uartputc+0x84>
    80006748:	00001097          	auipc	ra,0x1
    8000674c:	834080e7          	jalr	-1996(ra) # 80006f7c <push_on>
    80006750:	00093783          	ld	a5,0(s2)
    80006754:	0004b703          	ld	a4,0(s1)
    80006758:	02078793          	addi	a5,a5,32
    8000675c:	00e79463          	bne	a5,a4,80006764 <uartputc+0x6c>
    80006760:	0000006f          	j	80006760 <uartputc+0x68>
    80006764:	00001097          	auipc	ra,0x1
    80006768:	88c080e7          	jalr	-1908(ra) # 80006ff0 <pop_on>
    8000676c:	00093783          	ld	a5,0(s2)
    80006770:	0004b703          	ld	a4,0(s1)
    80006774:	02078693          	addi	a3,a5,32
    80006778:	fce688e3          	beq	a3,a4,80006748 <uartputc+0x50>
    8000677c:	01f77693          	andi	a3,a4,31
    80006780:	0000b597          	auipc	a1,0xb
    80006784:	54058593          	addi	a1,a1,1344 # 80011cc0 <uart_tx_buf>
    80006788:	00d586b3          	add	a3,a1,a3
    8000678c:	00170713          	addi	a4,a4,1
    80006790:	01368023          	sb	s3,0(a3)
    80006794:	00e4b023          	sd	a4,0(s1)
    80006798:	10000637          	lui	a2,0x10000
    8000679c:	02f71063          	bne	a4,a5,800067bc <uartputc+0xc4>
    800067a0:	0340006f          	j	800067d4 <uartputc+0xdc>
    800067a4:	00074703          	lbu	a4,0(a4)
    800067a8:	00f93023          	sd	a5,0(s2)
    800067ac:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800067b0:	00093783          	ld	a5,0(s2)
    800067b4:	0004b703          	ld	a4,0(s1)
    800067b8:	00f70e63          	beq	a4,a5,800067d4 <uartputc+0xdc>
    800067bc:	00564683          	lbu	a3,5(a2)
    800067c0:	01f7f713          	andi	a4,a5,31
    800067c4:	00e58733          	add	a4,a1,a4
    800067c8:	0206f693          	andi	a3,a3,32
    800067cc:	00178793          	addi	a5,a5,1
    800067d0:	fc069ae3          	bnez	a3,800067a4 <uartputc+0xac>
    800067d4:	02813083          	ld	ra,40(sp)
    800067d8:	02013403          	ld	s0,32(sp)
    800067dc:	01813483          	ld	s1,24(sp)
    800067e0:	01013903          	ld	s2,16(sp)
    800067e4:	00813983          	ld	s3,8(sp)
    800067e8:	03010113          	addi	sp,sp,48
    800067ec:	00008067          	ret

00000000800067f0 <uartputc_sync>:
    800067f0:	ff010113          	addi	sp,sp,-16
    800067f4:	00813423          	sd	s0,8(sp)
    800067f8:	01010413          	addi	s0,sp,16
    800067fc:	00002717          	auipc	a4,0x2
    80006800:	17c72703          	lw	a4,380(a4) # 80008978 <panicked>
    80006804:	02071663          	bnez	a4,80006830 <uartputc_sync+0x40>
    80006808:	00050793          	mv	a5,a0
    8000680c:	100006b7          	lui	a3,0x10000
    80006810:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80006814:	02077713          	andi	a4,a4,32
    80006818:	fe070ce3          	beqz	a4,80006810 <uartputc_sync+0x20>
    8000681c:	0ff7f793          	andi	a5,a5,255
    80006820:	00f68023          	sb	a5,0(a3)
    80006824:	00813403          	ld	s0,8(sp)
    80006828:	01010113          	addi	sp,sp,16
    8000682c:	00008067          	ret
    80006830:	0000006f          	j	80006830 <uartputc_sync+0x40>

0000000080006834 <uartstart>:
    80006834:	ff010113          	addi	sp,sp,-16
    80006838:	00813423          	sd	s0,8(sp)
    8000683c:	01010413          	addi	s0,sp,16
    80006840:	00002617          	auipc	a2,0x2
    80006844:	14060613          	addi	a2,a2,320 # 80008980 <uart_tx_r>
    80006848:	00002517          	auipc	a0,0x2
    8000684c:	14050513          	addi	a0,a0,320 # 80008988 <uart_tx_w>
    80006850:	00063783          	ld	a5,0(a2)
    80006854:	00053703          	ld	a4,0(a0)
    80006858:	04f70263          	beq	a4,a5,8000689c <uartstart+0x68>
    8000685c:	100005b7          	lui	a1,0x10000
    80006860:	0000b817          	auipc	a6,0xb
    80006864:	46080813          	addi	a6,a6,1120 # 80011cc0 <uart_tx_buf>
    80006868:	01c0006f          	j	80006884 <uartstart+0x50>
    8000686c:	0006c703          	lbu	a4,0(a3)
    80006870:	00f63023          	sd	a5,0(a2)
    80006874:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006878:	00063783          	ld	a5,0(a2)
    8000687c:	00053703          	ld	a4,0(a0)
    80006880:	00f70e63          	beq	a4,a5,8000689c <uartstart+0x68>
    80006884:	01f7f713          	andi	a4,a5,31
    80006888:	00e806b3          	add	a3,a6,a4
    8000688c:	0055c703          	lbu	a4,5(a1)
    80006890:	00178793          	addi	a5,a5,1
    80006894:	02077713          	andi	a4,a4,32
    80006898:	fc071ae3          	bnez	a4,8000686c <uartstart+0x38>
    8000689c:	00813403          	ld	s0,8(sp)
    800068a0:	01010113          	addi	sp,sp,16
    800068a4:	00008067          	ret

00000000800068a8 <uartgetc>:
    800068a8:	ff010113          	addi	sp,sp,-16
    800068ac:	00813423          	sd	s0,8(sp)
    800068b0:	01010413          	addi	s0,sp,16
    800068b4:	10000737          	lui	a4,0x10000
    800068b8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800068bc:	0017f793          	andi	a5,a5,1
    800068c0:	00078c63          	beqz	a5,800068d8 <uartgetc+0x30>
    800068c4:	00074503          	lbu	a0,0(a4)
    800068c8:	0ff57513          	andi	a0,a0,255
    800068cc:	00813403          	ld	s0,8(sp)
    800068d0:	01010113          	addi	sp,sp,16
    800068d4:	00008067          	ret
    800068d8:	fff00513          	li	a0,-1
    800068dc:	ff1ff06f          	j	800068cc <uartgetc+0x24>

00000000800068e0 <uartintr>:
    800068e0:	100007b7          	lui	a5,0x10000
    800068e4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800068e8:	0017f793          	andi	a5,a5,1
    800068ec:	0a078463          	beqz	a5,80006994 <uartintr+0xb4>
    800068f0:	fe010113          	addi	sp,sp,-32
    800068f4:	00813823          	sd	s0,16(sp)
    800068f8:	00913423          	sd	s1,8(sp)
    800068fc:	00113c23          	sd	ra,24(sp)
    80006900:	02010413          	addi	s0,sp,32
    80006904:	100004b7          	lui	s1,0x10000
    80006908:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000690c:	0ff57513          	andi	a0,a0,255
    80006910:	fffff097          	auipc	ra,0xfffff
    80006914:	534080e7          	jalr	1332(ra) # 80005e44 <consoleintr>
    80006918:	0054c783          	lbu	a5,5(s1)
    8000691c:	0017f793          	andi	a5,a5,1
    80006920:	fe0794e3          	bnez	a5,80006908 <uartintr+0x28>
    80006924:	00002617          	auipc	a2,0x2
    80006928:	05c60613          	addi	a2,a2,92 # 80008980 <uart_tx_r>
    8000692c:	00002517          	auipc	a0,0x2
    80006930:	05c50513          	addi	a0,a0,92 # 80008988 <uart_tx_w>
    80006934:	00063783          	ld	a5,0(a2)
    80006938:	00053703          	ld	a4,0(a0)
    8000693c:	04f70263          	beq	a4,a5,80006980 <uartintr+0xa0>
    80006940:	100005b7          	lui	a1,0x10000
    80006944:	0000b817          	auipc	a6,0xb
    80006948:	37c80813          	addi	a6,a6,892 # 80011cc0 <uart_tx_buf>
    8000694c:	01c0006f          	j	80006968 <uartintr+0x88>
    80006950:	0006c703          	lbu	a4,0(a3)
    80006954:	00f63023          	sd	a5,0(a2)
    80006958:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000695c:	00063783          	ld	a5,0(a2)
    80006960:	00053703          	ld	a4,0(a0)
    80006964:	00f70e63          	beq	a4,a5,80006980 <uartintr+0xa0>
    80006968:	01f7f713          	andi	a4,a5,31
    8000696c:	00e806b3          	add	a3,a6,a4
    80006970:	0055c703          	lbu	a4,5(a1)
    80006974:	00178793          	addi	a5,a5,1
    80006978:	02077713          	andi	a4,a4,32
    8000697c:	fc071ae3          	bnez	a4,80006950 <uartintr+0x70>
    80006980:	01813083          	ld	ra,24(sp)
    80006984:	01013403          	ld	s0,16(sp)
    80006988:	00813483          	ld	s1,8(sp)
    8000698c:	02010113          	addi	sp,sp,32
    80006990:	00008067          	ret
    80006994:	00002617          	auipc	a2,0x2
    80006998:	fec60613          	addi	a2,a2,-20 # 80008980 <uart_tx_r>
    8000699c:	00002517          	auipc	a0,0x2
    800069a0:	fec50513          	addi	a0,a0,-20 # 80008988 <uart_tx_w>
    800069a4:	00063783          	ld	a5,0(a2)
    800069a8:	00053703          	ld	a4,0(a0)
    800069ac:	04f70263          	beq	a4,a5,800069f0 <uartintr+0x110>
    800069b0:	100005b7          	lui	a1,0x10000
    800069b4:	0000b817          	auipc	a6,0xb
    800069b8:	30c80813          	addi	a6,a6,780 # 80011cc0 <uart_tx_buf>
    800069bc:	01c0006f          	j	800069d8 <uartintr+0xf8>
    800069c0:	0006c703          	lbu	a4,0(a3)
    800069c4:	00f63023          	sd	a5,0(a2)
    800069c8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800069cc:	00063783          	ld	a5,0(a2)
    800069d0:	00053703          	ld	a4,0(a0)
    800069d4:	02f70063          	beq	a4,a5,800069f4 <uartintr+0x114>
    800069d8:	01f7f713          	andi	a4,a5,31
    800069dc:	00e806b3          	add	a3,a6,a4
    800069e0:	0055c703          	lbu	a4,5(a1)
    800069e4:	00178793          	addi	a5,a5,1
    800069e8:	02077713          	andi	a4,a4,32
    800069ec:	fc071ae3          	bnez	a4,800069c0 <uartintr+0xe0>
    800069f0:	00008067          	ret
    800069f4:	00008067          	ret

00000000800069f8 <kinit>:
    800069f8:	fc010113          	addi	sp,sp,-64
    800069fc:	02913423          	sd	s1,40(sp)
    80006a00:	fffff7b7          	lui	a5,0xfffff
    80006a04:	00011497          	auipc	s1,0x11
    80006a08:	5fb48493          	addi	s1,s1,1531 # 80017fff <end+0xfff>
    80006a0c:	02813823          	sd	s0,48(sp)
    80006a10:	01313c23          	sd	s3,24(sp)
    80006a14:	00f4f4b3          	and	s1,s1,a5
    80006a18:	02113c23          	sd	ra,56(sp)
    80006a1c:	03213023          	sd	s2,32(sp)
    80006a20:	01413823          	sd	s4,16(sp)
    80006a24:	01513423          	sd	s5,8(sp)
    80006a28:	04010413          	addi	s0,sp,64
    80006a2c:	000017b7          	lui	a5,0x1
    80006a30:	01100993          	li	s3,17
    80006a34:	00f487b3          	add	a5,s1,a5
    80006a38:	01b99993          	slli	s3,s3,0x1b
    80006a3c:	06f9e063          	bltu	s3,a5,80006a9c <kinit+0xa4>
    80006a40:	00010a97          	auipc	s5,0x10
    80006a44:	5c0a8a93          	addi	s5,s5,1472 # 80017000 <end>
    80006a48:	0754ec63          	bltu	s1,s5,80006ac0 <kinit+0xc8>
    80006a4c:	0734fa63          	bgeu	s1,s3,80006ac0 <kinit+0xc8>
    80006a50:	00088a37          	lui	s4,0x88
    80006a54:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80006a58:	00002917          	auipc	s2,0x2
    80006a5c:	f3890913          	addi	s2,s2,-200 # 80008990 <kmem>
    80006a60:	00ca1a13          	slli	s4,s4,0xc
    80006a64:	0140006f          	j	80006a78 <kinit+0x80>
    80006a68:	000017b7          	lui	a5,0x1
    80006a6c:	00f484b3          	add	s1,s1,a5
    80006a70:	0554e863          	bltu	s1,s5,80006ac0 <kinit+0xc8>
    80006a74:	0534f663          	bgeu	s1,s3,80006ac0 <kinit+0xc8>
    80006a78:	00001637          	lui	a2,0x1
    80006a7c:	00100593          	li	a1,1
    80006a80:	00048513          	mv	a0,s1
    80006a84:	00000097          	auipc	ra,0x0
    80006a88:	5e4080e7          	jalr	1508(ra) # 80007068 <__memset>
    80006a8c:	00093783          	ld	a5,0(s2)
    80006a90:	00f4b023          	sd	a5,0(s1)
    80006a94:	00993023          	sd	s1,0(s2)
    80006a98:	fd4498e3          	bne	s1,s4,80006a68 <kinit+0x70>
    80006a9c:	03813083          	ld	ra,56(sp)
    80006aa0:	03013403          	ld	s0,48(sp)
    80006aa4:	02813483          	ld	s1,40(sp)
    80006aa8:	02013903          	ld	s2,32(sp)
    80006aac:	01813983          	ld	s3,24(sp)
    80006ab0:	01013a03          	ld	s4,16(sp)
    80006ab4:	00813a83          	ld	s5,8(sp)
    80006ab8:	04010113          	addi	sp,sp,64
    80006abc:	00008067          	ret
    80006ac0:	00002517          	auipc	a0,0x2
    80006ac4:	c2050513          	addi	a0,a0,-992 # 800086e0 <digits+0x18>
    80006ac8:	fffff097          	auipc	ra,0xfffff
    80006acc:	4b4080e7          	jalr	1204(ra) # 80005f7c <panic>

0000000080006ad0 <freerange>:
    80006ad0:	fc010113          	addi	sp,sp,-64
    80006ad4:	000017b7          	lui	a5,0x1
    80006ad8:	02913423          	sd	s1,40(sp)
    80006adc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80006ae0:	009504b3          	add	s1,a0,s1
    80006ae4:	fffff537          	lui	a0,0xfffff
    80006ae8:	02813823          	sd	s0,48(sp)
    80006aec:	02113c23          	sd	ra,56(sp)
    80006af0:	03213023          	sd	s2,32(sp)
    80006af4:	01313c23          	sd	s3,24(sp)
    80006af8:	01413823          	sd	s4,16(sp)
    80006afc:	01513423          	sd	s5,8(sp)
    80006b00:	01613023          	sd	s6,0(sp)
    80006b04:	04010413          	addi	s0,sp,64
    80006b08:	00a4f4b3          	and	s1,s1,a0
    80006b0c:	00f487b3          	add	a5,s1,a5
    80006b10:	06f5e463          	bltu	a1,a5,80006b78 <freerange+0xa8>
    80006b14:	00010a97          	auipc	s5,0x10
    80006b18:	4eca8a93          	addi	s5,s5,1260 # 80017000 <end>
    80006b1c:	0954e263          	bltu	s1,s5,80006ba0 <freerange+0xd0>
    80006b20:	01100993          	li	s3,17
    80006b24:	01b99993          	slli	s3,s3,0x1b
    80006b28:	0734fc63          	bgeu	s1,s3,80006ba0 <freerange+0xd0>
    80006b2c:	00058a13          	mv	s4,a1
    80006b30:	00002917          	auipc	s2,0x2
    80006b34:	e6090913          	addi	s2,s2,-416 # 80008990 <kmem>
    80006b38:	00002b37          	lui	s6,0x2
    80006b3c:	0140006f          	j	80006b50 <freerange+0x80>
    80006b40:	000017b7          	lui	a5,0x1
    80006b44:	00f484b3          	add	s1,s1,a5
    80006b48:	0554ec63          	bltu	s1,s5,80006ba0 <freerange+0xd0>
    80006b4c:	0534fa63          	bgeu	s1,s3,80006ba0 <freerange+0xd0>
    80006b50:	00001637          	lui	a2,0x1
    80006b54:	00100593          	li	a1,1
    80006b58:	00048513          	mv	a0,s1
    80006b5c:	00000097          	auipc	ra,0x0
    80006b60:	50c080e7          	jalr	1292(ra) # 80007068 <__memset>
    80006b64:	00093703          	ld	a4,0(s2)
    80006b68:	016487b3          	add	a5,s1,s6
    80006b6c:	00e4b023          	sd	a4,0(s1)
    80006b70:	00993023          	sd	s1,0(s2)
    80006b74:	fcfa76e3          	bgeu	s4,a5,80006b40 <freerange+0x70>
    80006b78:	03813083          	ld	ra,56(sp)
    80006b7c:	03013403          	ld	s0,48(sp)
    80006b80:	02813483          	ld	s1,40(sp)
    80006b84:	02013903          	ld	s2,32(sp)
    80006b88:	01813983          	ld	s3,24(sp)
    80006b8c:	01013a03          	ld	s4,16(sp)
    80006b90:	00813a83          	ld	s5,8(sp)
    80006b94:	00013b03          	ld	s6,0(sp)
    80006b98:	04010113          	addi	sp,sp,64
    80006b9c:	00008067          	ret
    80006ba0:	00002517          	auipc	a0,0x2
    80006ba4:	b4050513          	addi	a0,a0,-1216 # 800086e0 <digits+0x18>
    80006ba8:	fffff097          	auipc	ra,0xfffff
    80006bac:	3d4080e7          	jalr	980(ra) # 80005f7c <panic>

0000000080006bb0 <kfree>:
    80006bb0:	fe010113          	addi	sp,sp,-32
    80006bb4:	00813823          	sd	s0,16(sp)
    80006bb8:	00113c23          	sd	ra,24(sp)
    80006bbc:	00913423          	sd	s1,8(sp)
    80006bc0:	02010413          	addi	s0,sp,32
    80006bc4:	03451793          	slli	a5,a0,0x34
    80006bc8:	04079c63          	bnez	a5,80006c20 <kfree+0x70>
    80006bcc:	00010797          	auipc	a5,0x10
    80006bd0:	43478793          	addi	a5,a5,1076 # 80017000 <end>
    80006bd4:	00050493          	mv	s1,a0
    80006bd8:	04f56463          	bltu	a0,a5,80006c20 <kfree+0x70>
    80006bdc:	01100793          	li	a5,17
    80006be0:	01b79793          	slli	a5,a5,0x1b
    80006be4:	02f57e63          	bgeu	a0,a5,80006c20 <kfree+0x70>
    80006be8:	00001637          	lui	a2,0x1
    80006bec:	00100593          	li	a1,1
    80006bf0:	00000097          	auipc	ra,0x0
    80006bf4:	478080e7          	jalr	1144(ra) # 80007068 <__memset>
    80006bf8:	00002797          	auipc	a5,0x2
    80006bfc:	d9878793          	addi	a5,a5,-616 # 80008990 <kmem>
    80006c00:	0007b703          	ld	a4,0(a5)
    80006c04:	01813083          	ld	ra,24(sp)
    80006c08:	01013403          	ld	s0,16(sp)
    80006c0c:	00e4b023          	sd	a4,0(s1)
    80006c10:	0097b023          	sd	s1,0(a5)
    80006c14:	00813483          	ld	s1,8(sp)
    80006c18:	02010113          	addi	sp,sp,32
    80006c1c:	00008067          	ret
    80006c20:	00002517          	auipc	a0,0x2
    80006c24:	ac050513          	addi	a0,a0,-1344 # 800086e0 <digits+0x18>
    80006c28:	fffff097          	auipc	ra,0xfffff
    80006c2c:	354080e7          	jalr	852(ra) # 80005f7c <panic>

0000000080006c30 <kalloc>:
    80006c30:	fe010113          	addi	sp,sp,-32
    80006c34:	00813823          	sd	s0,16(sp)
    80006c38:	00913423          	sd	s1,8(sp)
    80006c3c:	00113c23          	sd	ra,24(sp)
    80006c40:	02010413          	addi	s0,sp,32
    80006c44:	00002797          	auipc	a5,0x2
    80006c48:	d4c78793          	addi	a5,a5,-692 # 80008990 <kmem>
    80006c4c:	0007b483          	ld	s1,0(a5)
    80006c50:	02048063          	beqz	s1,80006c70 <kalloc+0x40>
    80006c54:	0004b703          	ld	a4,0(s1)
    80006c58:	00001637          	lui	a2,0x1
    80006c5c:	00500593          	li	a1,5
    80006c60:	00048513          	mv	a0,s1
    80006c64:	00e7b023          	sd	a4,0(a5)
    80006c68:	00000097          	auipc	ra,0x0
    80006c6c:	400080e7          	jalr	1024(ra) # 80007068 <__memset>
    80006c70:	01813083          	ld	ra,24(sp)
    80006c74:	01013403          	ld	s0,16(sp)
    80006c78:	00048513          	mv	a0,s1
    80006c7c:	00813483          	ld	s1,8(sp)
    80006c80:	02010113          	addi	sp,sp,32
    80006c84:	00008067          	ret

0000000080006c88 <initlock>:
    80006c88:	ff010113          	addi	sp,sp,-16
    80006c8c:	00813423          	sd	s0,8(sp)
    80006c90:	01010413          	addi	s0,sp,16
    80006c94:	00813403          	ld	s0,8(sp)
    80006c98:	00b53423          	sd	a1,8(a0)
    80006c9c:	00052023          	sw	zero,0(a0)
    80006ca0:	00053823          	sd	zero,16(a0)
    80006ca4:	01010113          	addi	sp,sp,16
    80006ca8:	00008067          	ret

0000000080006cac <acquire>:
    80006cac:	fe010113          	addi	sp,sp,-32
    80006cb0:	00813823          	sd	s0,16(sp)
    80006cb4:	00913423          	sd	s1,8(sp)
    80006cb8:	00113c23          	sd	ra,24(sp)
    80006cbc:	01213023          	sd	s2,0(sp)
    80006cc0:	02010413          	addi	s0,sp,32
    80006cc4:	00050493          	mv	s1,a0
    80006cc8:	10002973          	csrr	s2,sstatus
    80006ccc:	100027f3          	csrr	a5,sstatus
    80006cd0:	ffd7f793          	andi	a5,a5,-3
    80006cd4:	10079073          	csrw	sstatus,a5
    80006cd8:	fffff097          	auipc	ra,0xfffff
    80006cdc:	8e4080e7          	jalr	-1820(ra) # 800055bc <mycpu>
    80006ce0:	07852783          	lw	a5,120(a0)
    80006ce4:	06078e63          	beqz	a5,80006d60 <acquire+0xb4>
    80006ce8:	fffff097          	auipc	ra,0xfffff
    80006cec:	8d4080e7          	jalr	-1836(ra) # 800055bc <mycpu>
    80006cf0:	07852783          	lw	a5,120(a0)
    80006cf4:	0004a703          	lw	a4,0(s1)
    80006cf8:	0017879b          	addiw	a5,a5,1
    80006cfc:	06f52c23          	sw	a5,120(a0)
    80006d00:	04071063          	bnez	a4,80006d40 <acquire+0x94>
    80006d04:	00100713          	li	a4,1
    80006d08:	00070793          	mv	a5,a4
    80006d0c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80006d10:	0007879b          	sext.w	a5,a5
    80006d14:	fe079ae3          	bnez	a5,80006d08 <acquire+0x5c>
    80006d18:	0ff0000f          	fence
    80006d1c:	fffff097          	auipc	ra,0xfffff
    80006d20:	8a0080e7          	jalr	-1888(ra) # 800055bc <mycpu>
    80006d24:	01813083          	ld	ra,24(sp)
    80006d28:	01013403          	ld	s0,16(sp)
    80006d2c:	00a4b823          	sd	a0,16(s1)
    80006d30:	00013903          	ld	s2,0(sp)
    80006d34:	00813483          	ld	s1,8(sp)
    80006d38:	02010113          	addi	sp,sp,32
    80006d3c:	00008067          	ret
    80006d40:	0104b903          	ld	s2,16(s1)
    80006d44:	fffff097          	auipc	ra,0xfffff
    80006d48:	878080e7          	jalr	-1928(ra) # 800055bc <mycpu>
    80006d4c:	faa91ce3          	bne	s2,a0,80006d04 <acquire+0x58>
    80006d50:	00002517          	auipc	a0,0x2
    80006d54:	99850513          	addi	a0,a0,-1640 # 800086e8 <digits+0x20>
    80006d58:	fffff097          	auipc	ra,0xfffff
    80006d5c:	224080e7          	jalr	548(ra) # 80005f7c <panic>
    80006d60:	00195913          	srli	s2,s2,0x1
    80006d64:	fffff097          	auipc	ra,0xfffff
    80006d68:	858080e7          	jalr	-1960(ra) # 800055bc <mycpu>
    80006d6c:	00197913          	andi	s2,s2,1
    80006d70:	07252e23          	sw	s2,124(a0)
    80006d74:	f75ff06f          	j	80006ce8 <acquire+0x3c>

0000000080006d78 <release>:
    80006d78:	fe010113          	addi	sp,sp,-32
    80006d7c:	00813823          	sd	s0,16(sp)
    80006d80:	00113c23          	sd	ra,24(sp)
    80006d84:	00913423          	sd	s1,8(sp)
    80006d88:	01213023          	sd	s2,0(sp)
    80006d8c:	02010413          	addi	s0,sp,32
    80006d90:	00052783          	lw	a5,0(a0)
    80006d94:	00079a63          	bnez	a5,80006da8 <release+0x30>
    80006d98:	00002517          	auipc	a0,0x2
    80006d9c:	95850513          	addi	a0,a0,-1704 # 800086f0 <digits+0x28>
    80006da0:	fffff097          	auipc	ra,0xfffff
    80006da4:	1dc080e7          	jalr	476(ra) # 80005f7c <panic>
    80006da8:	01053903          	ld	s2,16(a0)
    80006dac:	00050493          	mv	s1,a0
    80006db0:	fffff097          	auipc	ra,0xfffff
    80006db4:	80c080e7          	jalr	-2036(ra) # 800055bc <mycpu>
    80006db8:	fea910e3          	bne	s2,a0,80006d98 <release+0x20>
    80006dbc:	0004b823          	sd	zero,16(s1)
    80006dc0:	0ff0000f          	fence
    80006dc4:	0f50000f          	fence	iorw,ow
    80006dc8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80006dcc:	ffffe097          	auipc	ra,0xffffe
    80006dd0:	7f0080e7          	jalr	2032(ra) # 800055bc <mycpu>
    80006dd4:	100027f3          	csrr	a5,sstatus
    80006dd8:	0027f793          	andi	a5,a5,2
    80006ddc:	04079a63          	bnez	a5,80006e30 <release+0xb8>
    80006de0:	07852783          	lw	a5,120(a0)
    80006de4:	02f05e63          	blez	a5,80006e20 <release+0xa8>
    80006de8:	fff7871b          	addiw	a4,a5,-1
    80006dec:	06e52c23          	sw	a4,120(a0)
    80006df0:	00071c63          	bnez	a4,80006e08 <release+0x90>
    80006df4:	07c52783          	lw	a5,124(a0)
    80006df8:	00078863          	beqz	a5,80006e08 <release+0x90>
    80006dfc:	100027f3          	csrr	a5,sstatus
    80006e00:	0027e793          	ori	a5,a5,2
    80006e04:	10079073          	csrw	sstatus,a5
    80006e08:	01813083          	ld	ra,24(sp)
    80006e0c:	01013403          	ld	s0,16(sp)
    80006e10:	00813483          	ld	s1,8(sp)
    80006e14:	00013903          	ld	s2,0(sp)
    80006e18:	02010113          	addi	sp,sp,32
    80006e1c:	00008067          	ret
    80006e20:	00002517          	auipc	a0,0x2
    80006e24:	8f050513          	addi	a0,a0,-1808 # 80008710 <digits+0x48>
    80006e28:	fffff097          	auipc	ra,0xfffff
    80006e2c:	154080e7          	jalr	340(ra) # 80005f7c <panic>
    80006e30:	00002517          	auipc	a0,0x2
    80006e34:	8c850513          	addi	a0,a0,-1848 # 800086f8 <digits+0x30>
    80006e38:	fffff097          	auipc	ra,0xfffff
    80006e3c:	144080e7          	jalr	324(ra) # 80005f7c <panic>

0000000080006e40 <holding>:
    80006e40:	00052783          	lw	a5,0(a0)
    80006e44:	00079663          	bnez	a5,80006e50 <holding+0x10>
    80006e48:	00000513          	li	a0,0
    80006e4c:	00008067          	ret
    80006e50:	fe010113          	addi	sp,sp,-32
    80006e54:	00813823          	sd	s0,16(sp)
    80006e58:	00913423          	sd	s1,8(sp)
    80006e5c:	00113c23          	sd	ra,24(sp)
    80006e60:	02010413          	addi	s0,sp,32
    80006e64:	01053483          	ld	s1,16(a0)
    80006e68:	ffffe097          	auipc	ra,0xffffe
    80006e6c:	754080e7          	jalr	1876(ra) # 800055bc <mycpu>
    80006e70:	01813083          	ld	ra,24(sp)
    80006e74:	01013403          	ld	s0,16(sp)
    80006e78:	40a48533          	sub	a0,s1,a0
    80006e7c:	00153513          	seqz	a0,a0
    80006e80:	00813483          	ld	s1,8(sp)
    80006e84:	02010113          	addi	sp,sp,32
    80006e88:	00008067          	ret

0000000080006e8c <push_off>:
    80006e8c:	fe010113          	addi	sp,sp,-32
    80006e90:	00813823          	sd	s0,16(sp)
    80006e94:	00113c23          	sd	ra,24(sp)
    80006e98:	00913423          	sd	s1,8(sp)
    80006e9c:	02010413          	addi	s0,sp,32
    80006ea0:	100024f3          	csrr	s1,sstatus
    80006ea4:	100027f3          	csrr	a5,sstatus
    80006ea8:	ffd7f793          	andi	a5,a5,-3
    80006eac:	10079073          	csrw	sstatus,a5
    80006eb0:	ffffe097          	auipc	ra,0xffffe
    80006eb4:	70c080e7          	jalr	1804(ra) # 800055bc <mycpu>
    80006eb8:	07852783          	lw	a5,120(a0)
    80006ebc:	02078663          	beqz	a5,80006ee8 <push_off+0x5c>
    80006ec0:	ffffe097          	auipc	ra,0xffffe
    80006ec4:	6fc080e7          	jalr	1788(ra) # 800055bc <mycpu>
    80006ec8:	07852783          	lw	a5,120(a0)
    80006ecc:	01813083          	ld	ra,24(sp)
    80006ed0:	01013403          	ld	s0,16(sp)
    80006ed4:	0017879b          	addiw	a5,a5,1
    80006ed8:	06f52c23          	sw	a5,120(a0)
    80006edc:	00813483          	ld	s1,8(sp)
    80006ee0:	02010113          	addi	sp,sp,32
    80006ee4:	00008067          	ret
    80006ee8:	0014d493          	srli	s1,s1,0x1
    80006eec:	ffffe097          	auipc	ra,0xffffe
    80006ef0:	6d0080e7          	jalr	1744(ra) # 800055bc <mycpu>
    80006ef4:	0014f493          	andi	s1,s1,1
    80006ef8:	06952e23          	sw	s1,124(a0)
    80006efc:	fc5ff06f          	j	80006ec0 <push_off+0x34>

0000000080006f00 <pop_off>:
    80006f00:	ff010113          	addi	sp,sp,-16
    80006f04:	00813023          	sd	s0,0(sp)
    80006f08:	00113423          	sd	ra,8(sp)
    80006f0c:	01010413          	addi	s0,sp,16
    80006f10:	ffffe097          	auipc	ra,0xffffe
    80006f14:	6ac080e7          	jalr	1708(ra) # 800055bc <mycpu>
    80006f18:	100027f3          	csrr	a5,sstatus
    80006f1c:	0027f793          	andi	a5,a5,2
    80006f20:	04079663          	bnez	a5,80006f6c <pop_off+0x6c>
    80006f24:	07852783          	lw	a5,120(a0)
    80006f28:	02f05a63          	blez	a5,80006f5c <pop_off+0x5c>
    80006f2c:	fff7871b          	addiw	a4,a5,-1
    80006f30:	06e52c23          	sw	a4,120(a0)
    80006f34:	00071c63          	bnez	a4,80006f4c <pop_off+0x4c>
    80006f38:	07c52783          	lw	a5,124(a0)
    80006f3c:	00078863          	beqz	a5,80006f4c <pop_off+0x4c>
    80006f40:	100027f3          	csrr	a5,sstatus
    80006f44:	0027e793          	ori	a5,a5,2
    80006f48:	10079073          	csrw	sstatus,a5
    80006f4c:	00813083          	ld	ra,8(sp)
    80006f50:	00013403          	ld	s0,0(sp)
    80006f54:	01010113          	addi	sp,sp,16
    80006f58:	00008067          	ret
    80006f5c:	00001517          	auipc	a0,0x1
    80006f60:	7b450513          	addi	a0,a0,1972 # 80008710 <digits+0x48>
    80006f64:	fffff097          	auipc	ra,0xfffff
    80006f68:	018080e7          	jalr	24(ra) # 80005f7c <panic>
    80006f6c:	00001517          	auipc	a0,0x1
    80006f70:	78c50513          	addi	a0,a0,1932 # 800086f8 <digits+0x30>
    80006f74:	fffff097          	auipc	ra,0xfffff
    80006f78:	008080e7          	jalr	8(ra) # 80005f7c <panic>

0000000080006f7c <push_on>:
    80006f7c:	fe010113          	addi	sp,sp,-32
    80006f80:	00813823          	sd	s0,16(sp)
    80006f84:	00113c23          	sd	ra,24(sp)
    80006f88:	00913423          	sd	s1,8(sp)
    80006f8c:	02010413          	addi	s0,sp,32
    80006f90:	100024f3          	csrr	s1,sstatus
    80006f94:	100027f3          	csrr	a5,sstatus
    80006f98:	0027e793          	ori	a5,a5,2
    80006f9c:	10079073          	csrw	sstatus,a5
    80006fa0:	ffffe097          	auipc	ra,0xffffe
    80006fa4:	61c080e7          	jalr	1564(ra) # 800055bc <mycpu>
    80006fa8:	07852783          	lw	a5,120(a0)
    80006fac:	02078663          	beqz	a5,80006fd8 <push_on+0x5c>
    80006fb0:	ffffe097          	auipc	ra,0xffffe
    80006fb4:	60c080e7          	jalr	1548(ra) # 800055bc <mycpu>
    80006fb8:	07852783          	lw	a5,120(a0)
    80006fbc:	01813083          	ld	ra,24(sp)
    80006fc0:	01013403          	ld	s0,16(sp)
    80006fc4:	0017879b          	addiw	a5,a5,1
    80006fc8:	06f52c23          	sw	a5,120(a0)
    80006fcc:	00813483          	ld	s1,8(sp)
    80006fd0:	02010113          	addi	sp,sp,32
    80006fd4:	00008067          	ret
    80006fd8:	0014d493          	srli	s1,s1,0x1
    80006fdc:	ffffe097          	auipc	ra,0xffffe
    80006fe0:	5e0080e7          	jalr	1504(ra) # 800055bc <mycpu>
    80006fe4:	0014f493          	andi	s1,s1,1
    80006fe8:	06952e23          	sw	s1,124(a0)
    80006fec:	fc5ff06f          	j	80006fb0 <push_on+0x34>

0000000080006ff0 <pop_on>:
    80006ff0:	ff010113          	addi	sp,sp,-16
    80006ff4:	00813023          	sd	s0,0(sp)
    80006ff8:	00113423          	sd	ra,8(sp)
    80006ffc:	01010413          	addi	s0,sp,16
    80007000:	ffffe097          	auipc	ra,0xffffe
    80007004:	5bc080e7          	jalr	1468(ra) # 800055bc <mycpu>
    80007008:	100027f3          	csrr	a5,sstatus
    8000700c:	0027f793          	andi	a5,a5,2
    80007010:	04078463          	beqz	a5,80007058 <pop_on+0x68>
    80007014:	07852783          	lw	a5,120(a0)
    80007018:	02f05863          	blez	a5,80007048 <pop_on+0x58>
    8000701c:	fff7879b          	addiw	a5,a5,-1
    80007020:	06f52c23          	sw	a5,120(a0)
    80007024:	07853783          	ld	a5,120(a0)
    80007028:	00079863          	bnez	a5,80007038 <pop_on+0x48>
    8000702c:	100027f3          	csrr	a5,sstatus
    80007030:	ffd7f793          	andi	a5,a5,-3
    80007034:	10079073          	csrw	sstatus,a5
    80007038:	00813083          	ld	ra,8(sp)
    8000703c:	00013403          	ld	s0,0(sp)
    80007040:	01010113          	addi	sp,sp,16
    80007044:	00008067          	ret
    80007048:	00001517          	auipc	a0,0x1
    8000704c:	6f050513          	addi	a0,a0,1776 # 80008738 <digits+0x70>
    80007050:	fffff097          	auipc	ra,0xfffff
    80007054:	f2c080e7          	jalr	-212(ra) # 80005f7c <panic>
    80007058:	00001517          	auipc	a0,0x1
    8000705c:	6c050513          	addi	a0,a0,1728 # 80008718 <digits+0x50>
    80007060:	fffff097          	auipc	ra,0xfffff
    80007064:	f1c080e7          	jalr	-228(ra) # 80005f7c <panic>

0000000080007068 <__memset>:
    80007068:	ff010113          	addi	sp,sp,-16
    8000706c:	00813423          	sd	s0,8(sp)
    80007070:	01010413          	addi	s0,sp,16
    80007074:	1a060e63          	beqz	a2,80007230 <__memset+0x1c8>
    80007078:	40a007b3          	neg	a5,a0
    8000707c:	0077f793          	andi	a5,a5,7
    80007080:	00778693          	addi	a3,a5,7
    80007084:	00b00813          	li	a6,11
    80007088:	0ff5f593          	andi	a1,a1,255
    8000708c:	fff6071b          	addiw	a4,a2,-1
    80007090:	1b06e663          	bltu	a3,a6,8000723c <__memset+0x1d4>
    80007094:	1cd76463          	bltu	a4,a3,8000725c <__memset+0x1f4>
    80007098:	1a078e63          	beqz	a5,80007254 <__memset+0x1ec>
    8000709c:	00b50023          	sb	a1,0(a0)
    800070a0:	00100713          	li	a4,1
    800070a4:	1ae78463          	beq	a5,a4,8000724c <__memset+0x1e4>
    800070a8:	00b500a3          	sb	a1,1(a0)
    800070ac:	00200713          	li	a4,2
    800070b0:	1ae78a63          	beq	a5,a4,80007264 <__memset+0x1fc>
    800070b4:	00b50123          	sb	a1,2(a0)
    800070b8:	00300713          	li	a4,3
    800070bc:	18e78463          	beq	a5,a4,80007244 <__memset+0x1dc>
    800070c0:	00b501a3          	sb	a1,3(a0)
    800070c4:	00400713          	li	a4,4
    800070c8:	1ae78263          	beq	a5,a4,8000726c <__memset+0x204>
    800070cc:	00b50223          	sb	a1,4(a0)
    800070d0:	00500713          	li	a4,5
    800070d4:	1ae78063          	beq	a5,a4,80007274 <__memset+0x20c>
    800070d8:	00b502a3          	sb	a1,5(a0)
    800070dc:	00700713          	li	a4,7
    800070e0:	18e79e63          	bne	a5,a4,8000727c <__memset+0x214>
    800070e4:	00b50323          	sb	a1,6(a0)
    800070e8:	00700e93          	li	t4,7
    800070ec:	00859713          	slli	a4,a1,0x8
    800070f0:	00e5e733          	or	a4,a1,a4
    800070f4:	01059e13          	slli	t3,a1,0x10
    800070f8:	01c76e33          	or	t3,a4,t3
    800070fc:	01859313          	slli	t1,a1,0x18
    80007100:	006e6333          	or	t1,t3,t1
    80007104:	02059893          	slli	a7,a1,0x20
    80007108:	40f60e3b          	subw	t3,a2,a5
    8000710c:	011368b3          	or	a7,t1,a7
    80007110:	02859813          	slli	a6,a1,0x28
    80007114:	0108e833          	or	a6,a7,a6
    80007118:	03059693          	slli	a3,a1,0x30
    8000711c:	003e589b          	srliw	a7,t3,0x3
    80007120:	00d866b3          	or	a3,a6,a3
    80007124:	03859713          	slli	a4,a1,0x38
    80007128:	00389813          	slli	a6,a7,0x3
    8000712c:	00f507b3          	add	a5,a0,a5
    80007130:	00e6e733          	or	a4,a3,a4
    80007134:	000e089b          	sext.w	a7,t3
    80007138:	00f806b3          	add	a3,a6,a5
    8000713c:	00e7b023          	sd	a4,0(a5)
    80007140:	00878793          	addi	a5,a5,8
    80007144:	fed79ce3          	bne	a5,a3,8000713c <__memset+0xd4>
    80007148:	ff8e7793          	andi	a5,t3,-8
    8000714c:	0007871b          	sext.w	a4,a5
    80007150:	01d787bb          	addw	a5,a5,t4
    80007154:	0ce88e63          	beq	a7,a4,80007230 <__memset+0x1c8>
    80007158:	00f50733          	add	a4,a0,a5
    8000715c:	00b70023          	sb	a1,0(a4)
    80007160:	0017871b          	addiw	a4,a5,1
    80007164:	0cc77663          	bgeu	a4,a2,80007230 <__memset+0x1c8>
    80007168:	00e50733          	add	a4,a0,a4
    8000716c:	00b70023          	sb	a1,0(a4)
    80007170:	0027871b          	addiw	a4,a5,2
    80007174:	0ac77e63          	bgeu	a4,a2,80007230 <__memset+0x1c8>
    80007178:	00e50733          	add	a4,a0,a4
    8000717c:	00b70023          	sb	a1,0(a4)
    80007180:	0037871b          	addiw	a4,a5,3
    80007184:	0ac77663          	bgeu	a4,a2,80007230 <__memset+0x1c8>
    80007188:	00e50733          	add	a4,a0,a4
    8000718c:	00b70023          	sb	a1,0(a4)
    80007190:	0047871b          	addiw	a4,a5,4
    80007194:	08c77e63          	bgeu	a4,a2,80007230 <__memset+0x1c8>
    80007198:	00e50733          	add	a4,a0,a4
    8000719c:	00b70023          	sb	a1,0(a4)
    800071a0:	0057871b          	addiw	a4,a5,5
    800071a4:	08c77663          	bgeu	a4,a2,80007230 <__memset+0x1c8>
    800071a8:	00e50733          	add	a4,a0,a4
    800071ac:	00b70023          	sb	a1,0(a4)
    800071b0:	0067871b          	addiw	a4,a5,6
    800071b4:	06c77e63          	bgeu	a4,a2,80007230 <__memset+0x1c8>
    800071b8:	00e50733          	add	a4,a0,a4
    800071bc:	00b70023          	sb	a1,0(a4)
    800071c0:	0077871b          	addiw	a4,a5,7
    800071c4:	06c77663          	bgeu	a4,a2,80007230 <__memset+0x1c8>
    800071c8:	00e50733          	add	a4,a0,a4
    800071cc:	00b70023          	sb	a1,0(a4)
    800071d0:	0087871b          	addiw	a4,a5,8
    800071d4:	04c77e63          	bgeu	a4,a2,80007230 <__memset+0x1c8>
    800071d8:	00e50733          	add	a4,a0,a4
    800071dc:	00b70023          	sb	a1,0(a4)
    800071e0:	0097871b          	addiw	a4,a5,9
    800071e4:	04c77663          	bgeu	a4,a2,80007230 <__memset+0x1c8>
    800071e8:	00e50733          	add	a4,a0,a4
    800071ec:	00b70023          	sb	a1,0(a4)
    800071f0:	00a7871b          	addiw	a4,a5,10
    800071f4:	02c77e63          	bgeu	a4,a2,80007230 <__memset+0x1c8>
    800071f8:	00e50733          	add	a4,a0,a4
    800071fc:	00b70023          	sb	a1,0(a4)
    80007200:	00b7871b          	addiw	a4,a5,11
    80007204:	02c77663          	bgeu	a4,a2,80007230 <__memset+0x1c8>
    80007208:	00e50733          	add	a4,a0,a4
    8000720c:	00b70023          	sb	a1,0(a4)
    80007210:	00c7871b          	addiw	a4,a5,12
    80007214:	00c77e63          	bgeu	a4,a2,80007230 <__memset+0x1c8>
    80007218:	00e50733          	add	a4,a0,a4
    8000721c:	00b70023          	sb	a1,0(a4)
    80007220:	00d7879b          	addiw	a5,a5,13
    80007224:	00c7f663          	bgeu	a5,a2,80007230 <__memset+0x1c8>
    80007228:	00f507b3          	add	a5,a0,a5
    8000722c:	00b78023          	sb	a1,0(a5)
    80007230:	00813403          	ld	s0,8(sp)
    80007234:	01010113          	addi	sp,sp,16
    80007238:	00008067          	ret
    8000723c:	00b00693          	li	a3,11
    80007240:	e55ff06f          	j	80007094 <__memset+0x2c>
    80007244:	00300e93          	li	t4,3
    80007248:	ea5ff06f          	j	800070ec <__memset+0x84>
    8000724c:	00100e93          	li	t4,1
    80007250:	e9dff06f          	j	800070ec <__memset+0x84>
    80007254:	00000e93          	li	t4,0
    80007258:	e95ff06f          	j	800070ec <__memset+0x84>
    8000725c:	00000793          	li	a5,0
    80007260:	ef9ff06f          	j	80007158 <__memset+0xf0>
    80007264:	00200e93          	li	t4,2
    80007268:	e85ff06f          	j	800070ec <__memset+0x84>
    8000726c:	00400e93          	li	t4,4
    80007270:	e7dff06f          	j	800070ec <__memset+0x84>
    80007274:	00500e93          	li	t4,5
    80007278:	e75ff06f          	j	800070ec <__memset+0x84>
    8000727c:	00600e93          	li	t4,6
    80007280:	e6dff06f          	j	800070ec <__memset+0x84>

0000000080007284 <__memmove>:
    80007284:	ff010113          	addi	sp,sp,-16
    80007288:	00813423          	sd	s0,8(sp)
    8000728c:	01010413          	addi	s0,sp,16
    80007290:	0e060863          	beqz	a2,80007380 <__memmove+0xfc>
    80007294:	fff6069b          	addiw	a3,a2,-1
    80007298:	0006881b          	sext.w	a6,a3
    8000729c:	0ea5e863          	bltu	a1,a0,8000738c <__memmove+0x108>
    800072a0:	00758713          	addi	a4,a1,7
    800072a4:	00a5e7b3          	or	a5,a1,a0
    800072a8:	40a70733          	sub	a4,a4,a0
    800072ac:	0077f793          	andi	a5,a5,7
    800072b0:	00f73713          	sltiu	a4,a4,15
    800072b4:	00174713          	xori	a4,a4,1
    800072b8:	0017b793          	seqz	a5,a5
    800072bc:	00e7f7b3          	and	a5,a5,a4
    800072c0:	10078863          	beqz	a5,800073d0 <__memmove+0x14c>
    800072c4:	00900793          	li	a5,9
    800072c8:	1107f463          	bgeu	a5,a6,800073d0 <__memmove+0x14c>
    800072cc:	0036581b          	srliw	a6,a2,0x3
    800072d0:	fff8081b          	addiw	a6,a6,-1
    800072d4:	02081813          	slli	a6,a6,0x20
    800072d8:	01d85893          	srli	a7,a6,0x1d
    800072dc:	00858813          	addi	a6,a1,8
    800072e0:	00058793          	mv	a5,a1
    800072e4:	00050713          	mv	a4,a0
    800072e8:	01088833          	add	a6,a7,a6
    800072ec:	0007b883          	ld	a7,0(a5)
    800072f0:	00878793          	addi	a5,a5,8
    800072f4:	00870713          	addi	a4,a4,8
    800072f8:	ff173c23          	sd	a7,-8(a4)
    800072fc:	ff0798e3          	bne	a5,a6,800072ec <__memmove+0x68>
    80007300:	ff867713          	andi	a4,a2,-8
    80007304:	02071793          	slli	a5,a4,0x20
    80007308:	0207d793          	srli	a5,a5,0x20
    8000730c:	00f585b3          	add	a1,a1,a5
    80007310:	40e686bb          	subw	a3,a3,a4
    80007314:	00f507b3          	add	a5,a0,a5
    80007318:	06e60463          	beq	a2,a4,80007380 <__memmove+0xfc>
    8000731c:	0005c703          	lbu	a4,0(a1)
    80007320:	00e78023          	sb	a4,0(a5)
    80007324:	04068e63          	beqz	a3,80007380 <__memmove+0xfc>
    80007328:	0015c603          	lbu	a2,1(a1)
    8000732c:	00100713          	li	a4,1
    80007330:	00c780a3          	sb	a2,1(a5)
    80007334:	04e68663          	beq	a3,a4,80007380 <__memmove+0xfc>
    80007338:	0025c603          	lbu	a2,2(a1)
    8000733c:	00200713          	li	a4,2
    80007340:	00c78123          	sb	a2,2(a5)
    80007344:	02e68e63          	beq	a3,a4,80007380 <__memmove+0xfc>
    80007348:	0035c603          	lbu	a2,3(a1)
    8000734c:	00300713          	li	a4,3
    80007350:	00c781a3          	sb	a2,3(a5)
    80007354:	02e68663          	beq	a3,a4,80007380 <__memmove+0xfc>
    80007358:	0045c603          	lbu	a2,4(a1)
    8000735c:	00400713          	li	a4,4
    80007360:	00c78223          	sb	a2,4(a5)
    80007364:	00e68e63          	beq	a3,a4,80007380 <__memmove+0xfc>
    80007368:	0055c603          	lbu	a2,5(a1)
    8000736c:	00500713          	li	a4,5
    80007370:	00c782a3          	sb	a2,5(a5)
    80007374:	00e68663          	beq	a3,a4,80007380 <__memmove+0xfc>
    80007378:	0065c703          	lbu	a4,6(a1)
    8000737c:	00e78323          	sb	a4,6(a5)
    80007380:	00813403          	ld	s0,8(sp)
    80007384:	01010113          	addi	sp,sp,16
    80007388:	00008067          	ret
    8000738c:	02061713          	slli	a4,a2,0x20
    80007390:	02075713          	srli	a4,a4,0x20
    80007394:	00e587b3          	add	a5,a1,a4
    80007398:	f0f574e3          	bgeu	a0,a5,800072a0 <__memmove+0x1c>
    8000739c:	02069613          	slli	a2,a3,0x20
    800073a0:	02065613          	srli	a2,a2,0x20
    800073a4:	fff64613          	not	a2,a2
    800073a8:	00e50733          	add	a4,a0,a4
    800073ac:	00c78633          	add	a2,a5,a2
    800073b0:	fff7c683          	lbu	a3,-1(a5)
    800073b4:	fff78793          	addi	a5,a5,-1
    800073b8:	fff70713          	addi	a4,a4,-1
    800073bc:	00d70023          	sb	a3,0(a4)
    800073c0:	fec798e3          	bne	a5,a2,800073b0 <__memmove+0x12c>
    800073c4:	00813403          	ld	s0,8(sp)
    800073c8:	01010113          	addi	sp,sp,16
    800073cc:	00008067          	ret
    800073d0:	02069713          	slli	a4,a3,0x20
    800073d4:	02075713          	srli	a4,a4,0x20
    800073d8:	00170713          	addi	a4,a4,1
    800073dc:	00e50733          	add	a4,a0,a4
    800073e0:	00050793          	mv	a5,a0
    800073e4:	0005c683          	lbu	a3,0(a1)
    800073e8:	00178793          	addi	a5,a5,1
    800073ec:	00158593          	addi	a1,a1,1
    800073f0:	fed78fa3          	sb	a3,-1(a5)
    800073f4:	fee798e3          	bne	a5,a4,800073e4 <__memmove+0x160>
    800073f8:	f89ff06f          	j	80007380 <__memmove+0xfc>
	...

Disassembly of section .kernel:

00000000800135c0 <copy_and_swap-0xa40>:
	...

0000000080014000 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80014000:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80014004:	00b29a63          	bne	t0,a1,80014018 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    80014008:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    8001400c:	fe029ae3          	bnez	t0,80014000 <copy_and_swap>
    li a0, 0               # Set return to success.
    80014010:	00000513          	li	a0,0
    jr ra                  # Return.
    80014014:	00008067          	ret

0000000080014018 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    80014018:	00100513          	li	a0,1
    8001401c:	00008067          	ret

0000000080014020 <_Z9mem_allocm>:
//

#include "../../h/syscall_c.hpp"

void* mem_alloc(size_t size)
{
    80014020:	ff010113          	addi	sp,sp,-16
    80014024:	00813423          	sd	s0,8(sp)
    80014028:	01010413          	addi	s0,sp,16
    //prepare for system call
    uint64 numBlocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    8001402c:	03f50513          	addi	a0,a0,63
    80014030:	00655513          	srli	a0,a0,0x6
    __asm__ volatile("mv a1, %0" :  : "r"(numBlocks));
    80014034:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 1");
    80014038:	00100513          	li	a0,1

    __asm__ volatile("ecall"); // system call
    8001403c:	00000073          	ecall

    //get the address
    uint64 allocatedAddr = 0x01;
    __asm__ volatile("mv %0, a0" : "=r"(allocatedAddr));
    80014040:	00050513          	mv	a0,a0

    if(allocatedAddr == 0)
        return nullptr;

    return (void*)allocatedAddr;
}
    80014044:	00813403          	ld	s0,8(sp)
    80014048:	01010113          	addi	sp,sp,16
    8001404c:	00008067          	ret

0000000080014050 <_Z8mem_freePv>:

int mem_free(void* p)
{
    80014050:	ff010113          	addi	sp,sp,-16
    80014054:	00813423          	sd	s0,8(sp)
    80014058:	01010413          	addi	s0,sp,16
    //prepare for system call
    uint64 addrFree = (uint64)p;
    __asm__ volatile("mv a1, %0" :  : "r"(addrFree));
    8001405c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 2");
    80014060:	00200513          	li	a0,2

    __asm__ volatile("ecall"); // system call
    80014064:	00000073          	ecall

    //get the result of system call
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80014068:	00050513          	mv	a0,a0

    return result;
}
    8001406c:	0005051b          	sext.w	a0,a0
    80014070:	00813403          	ld	s0,8(sp)
    80014074:	01010113          	addi	sp,sp,16
    80014078:	00008067          	ret

000000008001407c <_Z13thread_createPP7_threadPFvPvES2_>:

int thread_create(thread_t* handle, void (*start_routine)(void*), void* args)
{
    8001407c:	fd010113          	addi	sp,sp,-48
    80014080:	02113423          	sd	ra,40(sp)
    80014084:	02813023          	sd	s0,32(sp)
    80014088:	00913c23          	sd	s1,24(sp)
    8001408c:	01213823          	sd	s2,16(sp)
    80014090:	01313423          	sd	s3,8(sp)
    80014094:	03010413          	addi	s0,sp,48
    80014098:	00050493          	mv	s1,a0
    8001409c:	00058913          	mv	s2,a1
    800140a0:	00060993          	mv	s3,a2
    uint64 handleLocal = (uint64)handle;
    uint64 startRLocal = (uint64)start_routine;
    uint64 argsLocal = (uint64)args;
    uint64 opLocal = 0x11;

    void * stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    800140a4:	00001537          	lui	a0,0x1
    800140a8:	00000097          	auipc	ra,0x0
    800140ac:	f78080e7          	jalr	-136(ra) # 80014020 <_Z9mem_allocm>
    uint64 stackPointerLocal = (uint64)stack_space;
    if(stack_space == nullptr)
    800140b0:	04050263          	beqz	a0,800140f4 <_Z13thread_createPP7_threadPFvPvES2_+0x78>
        return -1;

    //initialize registers
    __asm__ volatile("mv a4, %0" :  : "r"((uint64)stackPointerLocal));
    800140b4:	00050713          	mv	a4,a0
    //__asm__ volatile("mv a4, %0" :  : "r"((uint64)1));
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)argsLocal));
    800140b8:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)startRLocal));
    800140bc:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handleLocal));
    800140c0:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0" :  : "r"((uint64)opLocal));
    800140c4:	01100793          	li	a5,17
    800140c8:	00078513          	mv	a0,a5


    __asm__ volatile("ecall");
    800140cc:	00000073          	ecall

    //get the result
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800140d0:	00050513          	mv	a0,a0

    return result;
    800140d4:	0005051b          	sext.w	a0,a0
}
    800140d8:	02813083          	ld	ra,40(sp)
    800140dc:	02013403          	ld	s0,32(sp)
    800140e0:	01813483          	ld	s1,24(sp)
    800140e4:	01013903          	ld	s2,16(sp)
    800140e8:	00813983          	ld	s3,8(sp)
    800140ec:	03010113          	addi	sp,sp,48
    800140f0:	00008067          	ret
        return -1;
    800140f4:	fff00513          	li	a0,-1
    800140f8:	fe1ff06f          	j	800140d8 <_Z13thread_createPP7_threadPFvPvES2_+0x5c>

00000000800140fc <_Z15thread_dispatchv>:

void thread_dispatch()
{
    800140fc:	ff010113          	addi	sp,sp,-16
    80014100:	00813423          	sd	s0,8(sp)
    80014104:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    80014108:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    8001410c:	00000073          	ecall
}
    80014110:	00813403          	ld	s0,8(sp)
    80014114:	01010113          	addi	sp,sp,16
    80014118:	00008067          	ret

000000008001411c <_Z11thread_exitv>:

int thread_exit()
{
    8001411c:	ff010113          	addi	sp,sp,-16
    80014120:	00813423          	sd	s0,8(sp)
    80014124:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x12");
    80014128:	01200513          	li	a0,18

    __asm__ volatile("ecall");
    8001412c:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80014130:	00050513          	mv	a0,a0
    return result;
}
    80014134:	0005051b          	sext.w	a0,a0
    80014138:	00813403          	ld	s0,8(sp)
    8001413c:	01010113          	addi	sp,sp,16
    80014140:	00008067          	ret

0000000080014144 <_Z8sem_openPP4_semj>:

int sem_open(sem_t* handle, unsigned int x)
{
    80014144:	ff010113          	addi	sp,sp,-16
    80014148:	00813423          	sd	s0,8(sp)
    8001414c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)x));
    80014150:	02059593          	slli	a1,a1,0x20
    80014154:	0205d593          	srli	a1,a1,0x20
    80014158:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    8001415c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x21");
    80014160:	02100513          	li	a0,33

    __asm__ volatile("ecall");
    80014164:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80014168:	00050513          	mv	a0,a0
    return result;
}
    8001416c:	0005051b          	sext.w	a0,a0
    80014170:	00813403          	ld	s0,8(sp)
    80014174:	01010113          	addi	sp,sp,16
    80014178:	00008067          	ret

000000008001417c <_Z9sem_closeP4_sem>:


int sem_close(sem_t handle)
{
    8001417c:	ff010113          	addi	sp,sp,-16
    80014180:	00813423          	sd	s0,8(sp)
    80014184:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    80014188:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x22");
    8001418c:	02200513          	li	a0,34

    __asm__ volatile("ecall");
    80014190:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80014194:	00050513          	mv	a0,a0
    return result;
}
    80014198:	0005051b          	sext.w	a0,a0
    8001419c:	00813403          	ld	s0,8(sp)
    800141a0:	01010113          	addi	sp,sp,16
    800141a4:	00008067          	ret

00000000800141a8 <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id)
{
    800141a8:	ff010113          	addi	sp,sp,-16
    800141ac:	00813423          	sd	s0,8(sp)
    800141b0:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)id));
    800141b4:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x23");
    800141b8:	02300513          	li	a0,35

    __asm__ volatile("ecall");
    800141bc:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800141c0:	00050513          	mv	a0,a0
    return result;
}
    800141c4:	0005051b          	sext.w	a0,a0
    800141c8:	00813403          	ld	s0,8(sp)
    800141cc:	01010113          	addi	sp,sp,16
    800141d0:	00008067          	ret

00000000800141d4 <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id)
{
    800141d4:	ff010113          	addi	sp,sp,-16
    800141d8:	00813423          	sd	s0,8(sp)
    800141dc:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)id));
    800141e0:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x24");
    800141e4:	02400513          	li	a0,36

    __asm__ volatile("ecall");
    800141e8:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800141ec:	00050513          	mv	a0,a0
    return result;
}
    800141f0:	0005051b          	sext.w	a0,a0
    800141f4:	00813403          	ld	s0,8(sp)
    800141f8:	01010113          	addi	sp,sp,16
    800141fc:	00008067          	ret

0000000080014200 <_Z10time_sleepm>:

int time_sleep(uint64 time)
{
    80014200:	ff010113          	addi	sp,sp,-16
    80014204:	00813423          	sd	s0,8(sp)
    80014208:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)time));
    8001420c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x31");
    80014210:	03100513          	li	a0,49

    __asm__ volatile("ecall");
    80014214:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80014218:	00050513          	mv	a0,a0
    return result;
}
    8001421c:	0005051b          	sext.w	a0,a0
    80014220:	00813403          	ld	s0,8(sp)
    80014224:	01010113          	addi	sp,sp,16
    80014228:	00008067          	ret

000000008001422c <_Z12thread_startPv>:

int thread_start(void* p)
{
    8001422c:	ff010113          	addi	sp,sp,-16
    80014230:	00813423          	sd	s0,8(sp)
    80014234:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)p));
    80014238:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x15");
    8001423c:	01500513          	li	a0,21

    __asm__ volatile("ecall");
    80014240:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80014244:	00050513          	mv	a0,a0
    return result;
}
    80014248:	0005051b          	sext.w	a0,a0
    8001424c:	00813403          	ld	s0,8(sp)
    80014250:	01010113          	addi	sp,sp,16
    80014254:	00008067          	ret

0000000080014258 <_Z15thread_make_pcbPP7_threadPFvPvES2_>:

int thread_make_pcb(thread_t* handle, void(*start_routine)(void*), void *arg)
{
    80014258:	fd010113          	addi	sp,sp,-48
    8001425c:	02113423          	sd	ra,40(sp)
    80014260:	02813023          	sd	s0,32(sp)
    80014264:	00913c23          	sd	s1,24(sp)
    80014268:	01213823          	sd	s2,16(sp)
    8001426c:	01313423          	sd	s3,8(sp)
    80014270:	03010413          	addi	s0,sp,48
    80014274:	00050493          	mv	s1,a0
    80014278:	00058913          	mv	s2,a1
    8001427c:	00060993          	mv	s3,a2
    uint64 handleLocal = (uint64)handle;
    uint64 startRLocal = (uint64)start_routine;
    uint64 argsLocal = (uint64)arg;
    uint64 opLocal = 0x14;

    void * stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    80014280:	00001537          	lui	a0,0x1
    80014284:	00000097          	auipc	ra,0x0
    80014288:	d9c080e7          	jalr	-612(ra) # 80014020 <_Z9mem_allocm>
    uint64 stackPointerLocal = (uint64)stack_space;
    if(stack_space == 0)
    8001428c:	04050263          	beqz	a0,800142d0 <_Z15thread_make_pcbPP7_threadPFvPvES2_+0x78>
        return -1;

    //initialize registers
    __asm__ volatile("mv a4, %0" :  : "r"((uint64)stackPointerLocal));
    80014290:	00050713          	mv	a4,a0
    //__asm__ volatile("mv a4, %0" :  : "r"((uint64)1));
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)argsLocal));
    80014294:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)startRLocal));
    80014298:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handleLocal));
    8001429c:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0" :  : "r"((uint64)opLocal));
    800142a0:	01400793          	li	a5,20
    800142a4:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    800142a8:	00000073          	ecall

    //get the result
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800142ac:	00050513          	mv	a0,a0
    return result;
    800142b0:	0005051b          	sext.w	a0,a0
}
    800142b4:	02813083          	ld	ra,40(sp)
    800142b8:	02013403          	ld	s0,32(sp)
    800142bc:	01813483          	ld	s1,24(sp)
    800142c0:	01013903          	ld	s2,16(sp)
    800142c4:	00813983          	ld	s3,8(sp)
    800142c8:	03010113          	addi	sp,sp,48
    800142cc:	00008067          	ret
        return -1;
    800142d0:	fff00513          	li	a0,-1
    800142d4:	fe1ff06f          	j	800142b4 <_Z15thread_make_pcbPP7_threadPFvPvES2_+0x5c>

00000000800142d8 <_Z4getcv>:

char getc()
{
    800142d8:	ff010113          	addi	sp,sp,-16
    800142dc:	00813423          	sd	s0,8(sp)
    800142e0:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x41");
    800142e4:	04100513          	li	a0,65

    __asm__ volatile("ecall");
    800142e8:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800142ec:	00050513          	mv	a0,a0
    return (char)result;
}
    800142f0:	0ff57513          	andi	a0,a0,255
    800142f4:	00813403          	ld	s0,8(sp)
    800142f8:	01010113          	addi	sp,sp,16
    800142fc:	00008067          	ret

0000000080014300 <_Z4putcc>:

void putc(char c)
{
    80014300:	ff010113          	addi	sp,sp,-16
    80014304:	00813423          	sd	s0,8(sp)
    80014308:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)c));
    8001430c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x42");
    80014310:	04200513          	li	a0,66
    __asm__ volatile("ecall");
    80014314:	00000073          	ecall
}
    80014318:	00813403          	ld	s0,8(sp)
    8001431c:	01010113          	addi	sp,sp,16
    80014320:	00008067          	ret

0000000080014324 <_Z17thread_delete_pcbP7_thread>:
//    __asm__ volatile("mv %0, a0" : "=r"(result));
//    return (char)result;
//}

int thread_delete_pcb(thread_t handle)
{
    80014324:	ff010113          	addi	sp,sp,-16
    80014328:	00813423          	sd	s0,8(sp)
    8001432c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    80014330:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x16");
    80014334:	01600513          	li	a0,22
    __asm__ volatile("ecall");
    80014338:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8001433c:	00050513          	mv	a0,a0
    return (char)result;
}
    80014340:	0ff57513          	andi	a0,a0,255
    80014344:	00813403          	ld	s0,8(sp)
    80014348:	01010113          	addi	sp,sp,16
    8001434c:	00008067          	ret

0000000080014350 <_ZN7_threaddlEPv>:
//

#include "../../h/_thread.hpp"
#include "../../h/syscall_c.hpp"

void _thread::operator delete(void *p) {
    80014350:	ff010113          	addi	sp,sp,-16
    80014354:	00113423          	sd	ra,8(sp)
    80014358:	00813023          	sd	s0,0(sp)
    8001435c:	01010413          	addi	s0,sp,16
    thread_delete_pcb((thread_t)p);
    80014360:	00000097          	auipc	ra,0x0
    80014364:	fc4080e7          	jalr	-60(ra) # 80014324 <_Z17thread_delete_pcbP7_thread>
    80014368:	00813083          	ld	ra,8(sp)
    8001436c:	00013403          	ld	s0,0(sp)
    80014370:	01010113          	addi	sp,sp,16
    80014374:	00008067          	ret

0000000080014378 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80014378:	fe010113          	addi	sp,sp,-32
    8001437c:	00113c23          	sd	ra,24(sp)
    80014380:	00813823          	sd	s0,16(sp)
    80014384:	00913423          	sd	s1,8(sp)
    80014388:	02010413          	addi	s0,sp,32
    8001438c:	00050493          	mv	s1,a0
    LOCK();
    80014390:	00100613          	li	a2,1
    80014394:	00000593          	li	a1,0
    80014398:	00002517          	auipc	a0,0x2
    8001439c:	d2050513          	addi	a0,a0,-736 # 800160b8 <lockPrint>
    800143a0:	00000097          	auipc	ra,0x0
    800143a4:	c60080e7          	jalr	-928(ra) # 80014000 <copy_and_swap>
    800143a8:	fe0514e3          	bnez	a0,80014390 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800143ac:	0004c503          	lbu	a0,0(s1)
    800143b0:	00050a63          	beqz	a0,800143c4 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    800143b4:	00000097          	auipc	ra,0x0
    800143b8:	f4c080e7          	jalr	-180(ra) # 80014300 <_Z4putcc>
        string++;
    800143bc:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800143c0:	fedff06f          	j	800143ac <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    800143c4:	00000613          	li	a2,0
    800143c8:	00100593          	li	a1,1
    800143cc:	00002517          	auipc	a0,0x2
    800143d0:	cec50513          	addi	a0,a0,-788 # 800160b8 <lockPrint>
    800143d4:	00000097          	auipc	ra,0x0
    800143d8:	c2c080e7          	jalr	-980(ra) # 80014000 <copy_and_swap>
    800143dc:	fe0514e3          	bnez	a0,800143c4 <_Z11printStringPKc+0x4c>
}
    800143e0:	01813083          	ld	ra,24(sp)
    800143e4:	01013403          	ld	s0,16(sp)
    800143e8:	00813483          	ld	s1,8(sp)
    800143ec:	02010113          	addi	sp,sp,32
    800143f0:	00008067          	ret

00000000800143f4 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800143f4:	fd010113          	addi	sp,sp,-48
    800143f8:	02113423          	sd	ra,40(sp)
    800143fc:	02813023          	sd	s0,32(sp)
    80014400:	00913c23          	sd	s1,24(sp)
    80014404:	01213823          	sd	s2,16(sp)
    80014408:	01313423          	sd	s3,8(sp)
    8001440c:	01413023          	sd	s4,0(sp)
    80014410:	03010413          	addi	s0,sp,48
    80014414:	00050993          	mv	s3,a0
    80014418:	00058a13          	mv	s4,a1
    LOCK();
    8001441c:	00100613          	li	a2,1
    80014420:	00000593          	li	a1,0
    80014424:	00002517          	auipc	a0,0x2
    80014428:	c9450513          	addi	a0,a0,-876 # 800160b8 <lockPrint>
    8001442c:	00000097          	auipc	ra,0x0
    80014430:	bd4080e7          	jalr	-1068(ra) # 80014000 <copy_and_swap>
    80014434:	fe0514e3          	bnez	a0,8001441c <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80014438:	00000913          	li	s2,0
    8001443c:	00090493          	mv	s1,s2
    80014440:	0019091b          	addiw	s2,s2,1
    80014444:	03495a63          	bge	s2,s4,80014478 <_Z9getStringPci+0x84>
        cc = getc();
    80014448:	00000097          	auipc	ra,0x0
    8001444c:	e90080e7          	jalr	-368(ra) # 800142d8 <_Z4getcv>
        if(cc < 1)
    80014450:	02050463          	beqz	a0,80014478 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80014454:	009984b3          	add	s1,s3,s1
    80014458:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    8001445c:	00a00793          	li	a5,10
    80014460:	00f50a63          	beq	a0,a5,80014474 <_Z9getStringPci+0x80>
    80014464:	00d00793          	li	a5,13
    80014468:	fcf51ae3          	bne	a0,a5,8001443c <_Z9getStringPci+0x48>
        buf[i++] = c;
    8001446c:	00090493          	mv	s1,s2
    80014470:	0080006f          	j	80014478 <_Z9getStringPci+0x84>
    80014474:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80014478:	009984b3          	add	s1,s3,s1
    8001447c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80014480:	00000613          	li	a2,0
    80014484:	00100593          	li	a1,1
    80014488:	00002517          	auipc	a0,0x2
    8001448c:	c3050513          	addi	a0,a0,-976 # 800160b8 <lockPrint>
    80014490:	00000097          	auipc	ra,0x0
    80014494:	b70080e7          	jalr	-1168(ra) # 80014000 <copy_and_swap>
    80014498:	fe0514e3          	bnez	a0,80014480 <_Z9getStringPci+0x8c>
    return buf;
}
    8001449c:	00098513          	mv	a0,s3
    800144a0:	02813083          	ld	ra,40(sp)
    800144a4:	02013403          	ld	s0,32(sp)
    800144a8:	01813483          	ld	s1,24(sp)
    800144ac:	01013903          	ld	s2,16(sp)
    800144b0:	00813983          	ld	s3,8(sp)
    800144b4:	00013a03          	ld	s4,0(sp)
    800144b8:	03010113          	addi	sp,sp,48
    800144bc:	00008067          	ret

00000000800144c0 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800144c0:	ff010113          	addi	sp,sp,-16
    800144c4:	00813423          	sd	s0,8(sp)
    800144c8:	01010413          	addi	s0,sp,16
    800144cc:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800144d0:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800144d4:	0006c603          	lbu	a2,0(a3)
    800144d8:	fd06071b          	addiw	a4,a2,-48
    800144dc:	0ff77713          	andi	a4,a4,255
    800144e0:	00900793          	li	a5,9
    800144e4:	02e7e063          	bltu	a5,a4,80014504 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800144e8:	0025179b          	slliw	a5,a0,0x2
    800144ec:	00a787bb          	addw	a5,a5,a0
    800144f0:	0017979b          	slliw	a5,a5,0x1
    800144f4:	00168693          	addi	a3,a3,1
    800144f8:	00c787bb          	addw	a5,a5,a2
    800144fc:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80014500:	fd5ff06f          	j	800144d4 <_Z11stringToIntPKc+0x14>
    return n;
}
    80014504:	00813403          	ld	s0,8(sp)
    80014508:	01010113          	addi	sp,sp,16
    8001450c:	00008067          	ret

0000000080014510 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80014510:	fc010113          	addi	sp,sp,-64
    80014514:	02113c23          	sd	ra,56(sp)
    80014518:	02813823          	sd	s0,48(sp)
    8001451c:	02913423          	sd	s1,40(sp)
    80014520:	03213023          	sd	s2,32(sp)
    80014524:	01313c23          	sd	s3,24(sp)
    80014528:	04010413          	addi	s0,sp,64
    8001452c:	00050493          	mv	s1,a0
    80014530:	00058913          	mv	s2,a1
    80014534:	00060993          	mv	s3,a2
    LOCK();
    80014538:	00100613          	li	a2,1
    8001453c:	00000593          	li	a1,0
    80014540:	00002517          	auipc	a0,0x2
    80014544:	b7850513          	addi	a0,a0,-1160 # 800160b8 <lockPrint>
    80014548:	00000097          	auipc	ra,0x0
    8001454c:	ab8080e7          	jalr	-1352(ra) # 80014000 <copy_and_swap>
    80014550:	fe0514e3          	bnez	a0,80014538 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80014554:	00098463          	beqz	s3,8001455c <_Z8printIntiii+0x4c>
    80014558:	0804c463          	bltz	s1,800145e0 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    8001455c:	0004851b          	sext.w	a0,s1
    neg = 0;
    80014560:	00000593          	li	a1,0
    }

    i = 0;
    80014564:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80014568:	0009079b          	sext.w	a5,s2
    8001456c:	0325773b          	remuw	a4,a0,s2
    80014570:	00048613          	mv	a2,s1
    80014574:	0014849b          	addiw	s1,s1,1
    80014578:	02071693          	slli	a3,a4,0x20
    8001457c:	0206d693          	srli	a3,a3,0x20
    80014580:	00002717          	auipc	a4,0x2
    80014584:	aa870713          	addi	a4,a4,-1368 # 80016028 <digits>
    80014588:	00d70733          	add	a4,a4,a3
    8001458c:	00074683          	lbu	a3,0(a4)
    80014590:	fd040713          	addi	a4,s0,-48
    80014594:	00c70733          	add	a4,a4,a2
    80014598:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    8001459c:	0005071b          	sext.w	a4,a0
    800145a0:	0325553b          	divuw	a0,a0,s2
    800145a4:	fcf772e3          	bgeu	a4,a5,80014568 <_Z8printIntiii+0x58>
    if(neg)
    800145a8:	00058c63          	beqz	a1,800145c0 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    800145ac:	fd040793          	addi	a5,s0,-48
    800145b0:	009784b3          	add	s1,a5,s1
    800145b4:	02d00793          	li	a5,45
    800145b8:	fef48823          	sb	a5,-16(s1)
    800145bc:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800145c0:	fff4849b          	addiw	s1,s1,-1
    800145c4:	0204c463          	bltz	s1,800145ec <_Z8printIntiii+0xdc>
        putc(buf[i]);
    800145c8:	fd040793          	addi	a5,s0,-48
    800145cc:	009787b3          	add	a5,a5,s1
    800145d0:	ff07c503          	lbu	a0,-16(a5)
    800145d4:	00000097          	auipc	ra,0x0
    800145d8:	d2c080e7          	jalr	-724(ra) # 80014300 <_Z4putcc>
    800145dc:	fe5ff06f          	j	800145c0 <_Z8printIntiii+0xb0>
        x = -xx;
    800145e0:	4090053b          	negw	a0,s1
        neg = 1;
    800145e4:	00100593          	li	a1,1
        x = -xx;
    800145e8:	f7dff06f          	j	80014564 <_Z8printIntiii+0x54>

    UNLOCK();
    800145ec:	00000613          	li	a2,0
    800145f0:	00100593          	li	a1,1
    800145f4:	00002517          	auipc	a0,0x2
    800145f8:	ac450513          	addi	a0,a0,-1340 # 800160b8 <lockPrint>
    800145fc:	00000097          	auipc	ra,0x0
    80014600:	a04080e7          	jalr	-1532(ra) # 80014000 <copy_and_swap>
    80014604:	fe0514e3          	bnez	a0,800145ec <_Z8printIntiii+0xdc>
}
    80014608:	03813083          	ld	ra,56(sp)
    8001460c:	03013403          	ld	s0,48(sp)
    80014610:	02813483          	ld	s1,40(sp)
    80014614:	02013903          	ld	s2,32(sp)
    80014618:	01813983          	ld	s3,24(sp)
    8001461c:	04010113          	addi	sp,sp,64
    80014620:	00008067          	ret

0000000080014624 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"
#include "printing.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80014624:	fd010113          	addi	sp,sp,-48
    80014628:	02113423          	sd	ra,40(sp)
    8001462c:	02813023          	sd	s0,32(sp)
    80014630:	00913c23          	sd	s1,24(sp)
    80014634:	01213823          	sd	s2,16(sp)
    80014638:	01313423          	sd	s3,8(sp)
    8001463c:	03010413          	addi	s0,sp,48
    80014640:	00050493          	mv	s1,a0
    80014644:	00058993          	mv	s3,a1
    80014648:	0015879b          	addiw	a5,a1,1
    8001464c:	0007851b          	sext.w	a0,a5
    80014650:	00f4a023          	sw	a5,0(s1)
    80014654:	0004a823          	sw	zero,16(s1)
    80014658:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    8001465c:	00251513          	slli	a0,a0,0x2
    80014660:	00000097          	auipc	ra,0x0
    80014664:	9c0080e7          	jalr	-1600(ra) # 80014020 <_Z9mem_allocm>
    80014668:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    8001466c:	01000513          	li	a0,16
    80014670:	00001097          	auipc	ra,0x1
    80014674:	930080e7          	jalr	-1744(ra) # 80014fa0 <_Znwm>
    80014678:	00050913          	mv	s2,a0
    8001467c:	00050863          	beqz	a0,8001468c <_ZN9BufferCPPC1Ei+0x68>
    80014680:	00000593          	li	a1,0
    80014684:	00001097          	auipc	ra,0x1
    80014688:	b70080e7          	jalr	-1168(ra) # 800151f4 <_ZN9SemaphoreC1Ej>
    8001468c:	0324b023          	sd	s2,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80014690:	01000513          	li	a0,16
    80014694:	00001097          	auipc	ra,0x1
    80014698:	90c080e7          	jalr	-1780(ra) # 80014fa0 <_Znwm>
    8001469c:	00050913          	mv	s2,a0
    800146a0:	00050863          	beqz	a0,800146b0 <_ZN9BufferCPPC1Ei+0x8c>
    800146a4:	00098593          	mv	a1,s3
    800146a8:	00001097          	auipc	ra,0x1
    800146ac:	b4c080e7          	jalr	-1204(ra) # 800151f4 <_ZN9SemaphoreC1Ej>
    800146b0:	0124bc23          	sd	s2,24(s1)
    mutexHead = new Semaphore(1);
    800146b4:	01000513          	li	a0,16
    800146b8:	00001097          	auipc	ra,0x1
    800146bc:	8e8080e7          	jalr	-1816(ra) # 80014fa0 <_Znwm>
    800146c0:	00050913          	mv	s2,a0
    800146c4:	00050863          	beqz	a0,800146d4 <_ZN9BufferCPPC1Ei+0xb0>
    800146c8:	00100593          	li	a1,1
    800146cc:	00001097          	auipc	ra,0x1
    800146d0:	b28080e7          	jalr	-1240(ra) # 800151f4 <_ZN9SemaphoreC1Ej>
    800146d4:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800146d8:	01000513          	li	a0,16
    800146dc:	00001097          	auipc	ra,0x1
    800146e0:	8c4080e7          	jalr	-1852(ra) # 80014fa0 <_Znwm>
    800146e4:	00050913          	mv	s2,a0
    800146e8:	00050863          	beqz	a0,800146f8 <_ZN9BufferCPPC1Ei+0xd4>
    800146ec:	00100593          	li	a1,1
    800146f0:	00001097          	auipc	ra,0x1
    800146f4:	b04080e7          	jalr	-1276(ra) # 800151f4 <_ZN9SemaphoreC1Ej>
    800146f8:	0324b823          	sd	s2,48(s1)
}
    800146fc:	02813083          	ld	ra,40(sp)
    80014700:	02013403          	ld	s0,32(sp)
    80014704:	01813483          	ld	s1,24(sp)
    80014708:	01013903          	ld	s2,16(sp)
    8001470c:	00813983          	ld	s3,8(sp)
    80014710:	03010113          	addi	sp,sp,48
    80014714:	00008067          	ret
    80014718:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    8001471c:	00090513          	mv	a0,s2
    80014720:	00001097          	auipc	ra,0x1
    80014724:	8a8080e7          	jalr	-1880(ra) # 80014fc8 <_ZdlPv>
    80014728:	00048513          	mv	a0,s1
    8001472c:	ffffd097          	auipc	ra,0xffffd
    80014730:	41c080e7          	jalr	1052(ra) # 80011b48 <_Unwind_Resume>
    80014734:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80014738:	00090513          	mv	a0,s2
    8001473c:	00001097          	auipc	ra,0x1
    80014740:	88c080e7          	jalr	-1908(ra) # 80014fc8 <_ZdlPv>
    80014744:	00048513          	mv	a0,s1
    80014748:	ffffd097          	auipc	ra,0xffffd
    8001474c:	400080e7          	jalr	1024(ra) # 80011b48 <_Unwind_Resume>
    80014750:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80014754:	00090513          	mv	a0,s2
    80014758:	00001097          	auipc	ra,0x1
    8001475c:	870080e7          	jalr	-1936(ra) # 80014fc8 <_ZdlPv>
    80014760:	00048513          	mv	a0,s1
    80014764:	ffffd097          	auipc	ra,0xffffd
    80014768:	3e4080e7          	jalr	996(ra) # 80011b48 <_Unwind_Resume>
    8001476c:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80014770:	00090513          	mv	a0,s2
    80014774:	00001097          	auipc	ra,0x1
    80014778:	854080e7          	jalr	-1964(ra) # 80014fc8 <_ZdlPv>
    8001477c:	00048513          	mv	a0,s1
    80014780:	ffffd097          	auipc	ra,0xffffd
    80014784:	3c8080e7          	jalr	968(ra) # 80011b48 <_Unwind_Resume>

0000000080014788 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80014788:	fe010113          	addi	sp,sp,-32
    8001478c:	00113c23          	sd	ra,24(sp)
    80014790:	00813823          	sd	s0,16(sp)
    80014794:	00913423          	sd	s1,8(sp)
    80014798:	01213023          	sd	s2,0(sp)
    8001479c:	02010413          	addi	s0,sp,32
    800147a0:	00050493          	mv	s1,a0
    800147a4:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800147a8:	01853503          	ld	a0,24(a0)
    800147ac:	00001097          	auipc	ra,0x1
    800147b0:	a10080e7          	jalr	-1520(ra) # 800151bc <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800147b4:	0304b503          	ld	a0,48(s1)
    800147b8:	00001097          	auipc	ra,0x1
    800147bc:	a04080e7          	jalr	-1532(ra) # 800151bc <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800147c0:	0084b783          	ld	a5,8(s1)
    800147c4:	0144a703          	lw	a4,20(s1)
    800147c8:	00271713          	slli	a4,a4,0x2
    800147cc:	00e787b3          	add	a5,a5,a4
    800147d0:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800147d4:	0144a783          	lw	a5,20(s1)
    800147d8:	0017879b          	addiw	a5,a5,1
    800147dc:	0004a703          	lw	a4,0(s1)
    800147e0:	02e7e7bb          	remw	a5,a5,a4
    800147e4:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800147e8:	0304b503          	ld	a0,48(s1)
    800147ec:	00001097          	auipc	ra,0x1
    800147f0:	a54080e7          	jalr	-1452(ra) # 80015240 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    800147f4:	0204b503          	ld	a0,32(s1)
    800147f8:	00001097          	auipc	ra,0x1
    800147fc:	a48080e7          	jalr	-1464(ra) # 80015240 <_ZN9Semaphore6signalEv>

}
    80014800:	01813083          	ld	ra,24(sp)
    80014804:	01013403          	ld	s0,16(sp)
    80014808:	00813483          	ld	s1,8(sp)
    8001480c:	00013903          	ld	s2,0(sp)
    80014810:	02010113          	addi	sp,sp,32
    80014814:	00008067          	ret

0000000080014818 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80014818:	fe010113          	addi	sp,sp,-32
    8001481c:	00113c23          	sd	ra,24(sp)
    80014820:	00813823          	sd	s0,16(sp)
    80014824:	00913423          	sd	s1,8(sp)
    80014828:	01213023          	sd	s2,0(sp)
    8001482c:	02010413          	addi	s0,sp,32
    80014830:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80014834:	02053503          	ld	a0,32(a0)
    80014838:	00001097          	auipc	ra,0x1
    8001483c:	984080e7          	jalr	-1660(ra) # 800151bc <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80014840:	0284b503          	ld	a0,40(s1)
    80014844:	00001097          	auipc	ra,0x1
    80014848:	978080e7          	jalr	-1672(ra) # 800151bc <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    8001484c:	0084b703          	ld	a4,8(s1)
    80014850:	0104a783          	lw	a5,16(s1)
    80014854:	00279693          	slli	a3,a5,0x2
    80014858:	00d70733          	add	a4,a4,a3
    8001485c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80014860:	0017879b          	addiw	a5,a5,1
    80014864:	0004a703          	lw	a4,0(s1)
    80014868:	02e7e7bb          	remw	a5,a5,a4
    8001486c:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80014870:	0284b503          	ld	a0,40(s1)
    80014874:	00001097          	auipc	ra,0x1
    80014878:	9cc080e7          	jalr	-1588(ra) # 80015240 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    8001487c:	0184b503          	ld	a0,24(s1)
    80014880:	00001097          	auipc	ra,0x1
    80014884:	9c0080e7          	jalr	-1600(ra) # 80015240 <_ZN9Semaphore6signalEv>

    return ret;
}
    80014888:	00090513          	mv	a0,s2
    8001488c:	01813083          	ld	ra,24(sp)
    80014890:	01013403          	ld	s0,16(sp)
    80014894:	00813483          	ld	s1,8(sp)
    80014898:	00013903          	ld	s2,0(sp)
    8001489c:	02010113          	addi	sp,sp,32
    800148a0:	00008067          	ret

00000000800148a4 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800148a4:	fe010113          	addi	sp,sp,-32
    800148a8:	00113c23          	sd	ra,24(sp)
    800148ac:	00813823          	sd	s0,16(sp)
    800148b0:	00913423          	sd	s1,8(sp)
    800148b4:	01213023          	sd	s2,0(sp)
    800148b8:	02010413          	addi	s0,sp,32
    800148bc:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800148c0:	02853503          	ld	a0,40(a0)
    800148c4:	00001097          	auipc	ra,0x1
    800148c8:	8f8080e7          	jalr	-1800(ra) # 800151bc <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    800148cc:	0304b503          	ld	a0,48(s1)
    800148d0:	00001097          	auipc	ra,0x1
    800148d4:	8ec080e7          	jalr	-1812(ra) # 800151bc <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    800148d8:	0144a783          	lw	a5,20(s1)
    800148dc:	0104a903          	lw	s2,16(s1)
    800148e0:	0327ce63          	blt	a5,s2,8001491c <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    800148e4:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    800148e8:	0304b503          	ld	a0,48(s1)
    800148ec:	00001097          	auipc	ra,0x1
    800148f0:	954080e7          	jalr	-1708(ra) # 80015240 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    800148f4:	0284b503          	ld	a0,40(s1)
    800148f8:	00001097          	auipc	ra,0x1
    800148fc:	948080e7          	jalr	-1720(ra) # 80015240 <_ZN9Semaphore6signalEv>

    return ret;
}
    80014900:	00090513          	mv	a0,s2
    80014904:	01813083          	ld	ra,24(sp)
    80014908:	01013403          	ld	s0,16(sp)
    8001490c:	00813483          	ld	s1,8(sp)
    80014910:	00013903          	ld	s2,0(sp)
    80014914:	02010113          	addi	sp,sp,32
    80014918:	00008067          	ret
        ret = cap - head + tail;
    8001491c:	0004a703          	lw	a4,0(s1)
    80014920:	4127093b          	subw	s2,a4,s2
    80014924:	00f9093b          	addw	s2,s2,a5
    80014928:	fc1ff06f          	j	800148e8 <_ZN9BufferCPP6getCntEv+0x44>

000000008001492c <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    8001492c:	fe010113          	addi	sp,sp,-32
    80014930:	00113c23          	sd	ra,24(sp)
    80014934:	00813823          	sd	s0,16(sp)
    80014938:	00913423          	sd	s1,8(sp)
    8001493c:	02010413          	addi	s0,sp,32
    80014940:	00050493          	mv	s1,a0
    Console::putc('\n');
    80014944:	00a00513          	li	a0,10
    80014948:	00001097          	auipc	ra,0x1
    8001494c:	958080e7          	jalr	-1704(ra) # 800152a0 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80014950:	00001517          	auipc	a0,0x1
    80014954:	6b050513          	addi	a0,a0,1712 # 80016000 <userDataStart>
    80014958:	00000097          	auipc	ra,0x0
    8001495c:	a20080e7          	jalr	-1504(ra) # 80014378 <_Z11printStringPKc>
    while (getCnt()) {
    80014960:	00048513          	mv	a0,s1
    80014964:	00000097          	auipc	ra,0x0
    80014968:	f40080e7          	jalr	-192(ra) # 800148a4 <_ZN9BufferCPP6getCntEv>
    8001496c:	02050c63          	beqz	a0,800149a4 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80014970:	0084b783          	ld	a5,8(s1)
    80014974:	0104a703          	lw	a4,16(s1)
    80014978:	00271713          	slli	a4,a4,0x2
    8001497c:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80014980:	0007c503          	lbu	a0,0(a5)
    80014984:	00001097          	auipc	ra,0x1
    80014988:	91c080e7          	jalr	-1764(ra) # 800152a0 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    8001498c:	0104a783          	lw	a5,16(s1)
    80014990:	0017879b          	addiw	a5,a5,1
    80014994:	0004a703          	lw	a4,0(s1)
    80014998:	02e7e7bb          	remw	a5,a5,a4
    8001499c:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800149a0:	fc1ff06f          	j	80014960 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800149a4:	02100513          	li	a0,33
    800149a8:	00001097          	auipc	ra,0x1
    800149ac:	8f8080e7          	jalr	-1800(ra) # 800152a0 <_ZN7Console4putcEc>
    Console::putc('\n');
    800149b0:	00a00513          	li	a0,10
    800149b4:	00001097          	auipc	ra,0x1
    800149b8:	8ec080e7          	jalr	-1812(ra) # 800152a0 <_ZN7Console4putcEc>
    mem_free(buffer);
    800149bc:	0084b503          	ld	a0,8(s1)
    800149c0:	fffff097          	auipc	ra,0xfffff
    800149c4:	690080e7          	jalr	1680(ra) # 80014050 <_Z8mem_freePv>
    delete itemAvailable;
    800149c8:	0204b503          	ld	a0,32(s1)
    800149cc:	00050863          	beqz	a0,800149dc <_ZN9BufferCPPD1Ev+0xb0>
    800149d0:	00053783          	ld	a5,0(a0)
    800149d4:	0087b783          	ld	a5,8(a5)
    800149d8:	000780e7          	jalr	a5
    delete spaceAvailable;
    800149dc:	0184b503          	ld	a0,24(s1)
    800149e0:	00050863          	beqz	a0,800149f0 <_ZN9BufferCPPD1Ev+0xc4>
    800149e4:	00053783          	ld	a5,0(a0)
    800149e8:	0087b783          	ld	a5,8(a5)
    800149ec:	000780e7          	jalr	a5
    delete mutexTail;
    800149f0:	0304b503          	ld	a0,48(s1)
    800149f4:	00050863          	beqz	a0,80014a04 <_ZN9BufferCPPD1Ev+0xd8>
    800149f8:	00053783          	ld	a5,0(a0)
    800149fc:	0087b783          	ld	a5,8(a5)
    80014a00:	000780e7          	jalr	a5
    delete mutexHead;
    80014a04:	0284b503          	ld	a0,40(s1)
    80014a08:	00050863          	beqz	a0,80014a18 <_ZN9BufferCPPD1Ev+0xec>
    80014a0c:	00053783          	ld	a5,0(a0)
    80014a10:	0087b783          	ld	a5,8(a5)
    80014a14:	000780e7          	jalr	a5
}
    80014a18:	01813083          	ld	ra,24(sp)
    80014a1c:	01013403          	ld	s0,16(sp)
    80014a20:	00813483          	ld	s1,8(sp)
    80014a24:	02010113          	addi	sp,sp,32
    80014a28:	00008067          	ret

0000000080014a2c <_Z9sleepyRunPv>:
#include "../../../h/syscall_c_kernel.hpp"
#include "printing.hpp"

bool finished[2];

void sleepyRun(void *arg) {
    80014a2c:	fe010113          	addi	sp,sp,-32
    80014a30:	00113c23          	sd	ra,24(sp)
    80014a34:	00813823          	sd	s0,16(sp)
    80014a38:	00913423          	sd	s1,8(sp)
    80014a3c:	01213023          	sd	s2,0(sp)
    80014a40:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80014a44:	00053903          	ld	s2,0(a0)
    int i = 6;
    80014a48:	00600493          	li	s1,6
    while (--i > 0) {
    80014a4c:	fff4849b          	addiw	s1,s1,-1
    80014a50:	06905663          	blez	s1,80014abc <_Z9sleepyRunPv+0x90>

        printString("Hello ");
    80014a54:	00001517          	auipc	a0,0x1
    80014a58:	5c450513          	addi	a0,a0,1476 # 80016018 <userDataStart+0x18>
    80014a5c:	00000097          	auipc	ra,0x0
    80014a60:	91c080e7          	jalr	-1764(ra) # 80014378 <_Z11printStringPKc>
        printInt(sleep_time);
    80014a64:	00000613          	li	a2,0
    80014a68:	00a00593          	li	a1,10
    80014a6c:	0009051b          	sext.w	a0,s2
    80014a70:	00000097          	auipc	ra,0x0
    80014a74:	aa0080e7          	jalr	-1376(ra) # 80014510 <_Z8printIntiii>
        printString(" !\n");
    80014a78:	00001517          	auipc	a0,0x1
    80014a7c:	5a850513          	addi	a0,a0,1448 # 80016020 <userDataStart+0x20>
    80014a80:	00000097          	auipc	ra,0x0
    80014a84:	8f8080e7          	jalr	-1800(ra) # 80014378 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80014a88:	00090513          	mv	a0,s2
    80014a8c:	fffff097          	auipc	ra,0xfffff
    80014a90:	774080e7          	jalr	1908(ra) # 80014200 <_Z10time_sleepm>
        if(i == 4 && sleep_time == 10)
    80014a94:	00400793          	li	a5,4
    80014a98:	faf49ae3          	bne	s1,a5,80014a4c <_Z9sleepyRunPv+0x20>
    80014a9c:	00a00793          	li	a5,10
    80014aa0:	faf916e3          	bne	s2,a5,80014a4c <_Z9sleepyRunPv+0x20>
        {
            //thread_dispatch_kernel();
            *((size_t*)HEAP_START_ADDR) = 4;
    80014aa4:	ffff4797          	auipc	a5,0xffff4
    80014aa8:	e0c7b783          	ld	a5,-500(a5) # 800088b0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80014aac:	0007b783          	ld	a5,0(a5)
    80014ab0:	00400713          	li	a4,4
    80014ab4:	00e7b023          	sd	a4,0(a5)
    80014ab8:	f95ff06f          	j	80014a4c <_Z9sleepyRunPv+0x20>
        }
    }
    finished[sleep_time/10-1] = true;
    80014abc:	00a00793          	li	a5,10
    80014ac0:	02f95933          	divu	s2,s2,a5
    80014ac4:	fff90913          	addi	s2,s2,-1
    80014ac8:	00001797          	auipc	a5,0x1
    80014acc:	5f878793          	addi	a5,a5,1528 # 800160c0 <finished>
    80014ad0:	01278933          	add	s2,a5,s2
    80014ad4:	00100793          	li	a5,1
    80014ad8:	00f90023          	sb	a5,0(s2)
}
    80014adc:	01813083          	ld	ra,24(sp)
    80014ae0:	01013403          	ld	s0,16(sp)
    80014ae4:	00813483          	ld	s1,8(sp)
    80014ae8:	00013903          	ld	s2,0(sp)
    80014aec:	02010113          	addi	sp,sp,32
    80014af0:	00008067          	ret

0000000080014af4 <_Z12testSleepingv>:

void testSleeping() {
    80014af4:	fc010113          	addi	sp,sp,-64
    80014af8:	02113c23          	sd	ra,56(sp)
    80014afc:	02813823          	sd	s0,48(sp)
    80014b00:	02913423          	sd	s1,40(sp)
    80014b04:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80014b08:	00a00793          	li	a5,10
    80014b0c:	fcf43823          	sd	a5,-48(s0)
    80014b10:	01400793          	li	a5,20
    80014b14:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80014b18:	00000493          	li	s1,0
    80014b1c:	02c0006f          	j	80014b48 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80014b20:	00349793          	slli	a5,s1,0x3
    80014b24:	fd040613          	addi	a2,s0,-48
    80014b28:	00f60633          	add	a2,a2,a5
    80014b2c:	00000597          	auipc	a1,0x0
    80014b30:	f0058593          	addi	a1,a1,-256 # 80014a2c <_Z9sleepyRunPv>
    80014b34:	fc040513          	addi	a0,s0,-64
    80014b38:	00f50533          	add	a0,a0,a5
    80014b3c:	fffff097          	auipc	ra,0xfffff
    80014b40:	540080e7          	jalr	1344(ra) # 8001407c <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80014b44:	0014849b          	addiw	s1,s1,1
    80014b48:	00100793          	li	a5,1
    80014b4c:	fc97dae3          	bge	a5,s1,80014b20 <_Z12testSleepingv+0x2c>
    }

    int count = 0;
    80014b50:	00000493          	li	s1,0
    80014b54:	0200006f          	j	80014b74 <_Z12testSleepingv+0x80>
    while (!(finished[0] && finished[1])) {
        count++;
    80014b58:	0014849b          	addiw	s1,s1,1
        if(count == 2000*2000)
    80014b5c:	003d17b7          	lui	a5,0x3d1
    80014b60:	90078793          	addi	a5,a5,-1792 # 3d0900 <_entry-0x7fc2f700>
    80014b64:	02f49e63          	bne	s1,a5,80014ba0 <_Z12testSleepingv+0xac>
            finished[0] = true;
    80014b68:	00100793          	li	a5,1
    80014b6c:	00001717          	auipc	a4,0x1
    80014b70:	54f70a23          	sb	a5,1364(a4) # 800160c0 <finished>
    while (!(finished[0] && finished[1])) {
    80014b74:	00001797          	auipc	a5,0x1
    80014b78:	54c7c783          	lbu	a5,1356(a5) # 800160c0 <finished>
    80014b7c:	fc078ee3          	beqz	a5,80014b58 <_Z12testSleepingv+0x64>
    80014b80:	00001797          	auipc	a5,0x1
    80014b84:	5417c783          	lbu	a5,1345(a5) # 800160c1 <finished+0x1>
    80014b88:	fc0788e3          	beqz	a5,80014b58 <_Z12testSleepingv+0x64>
        else
            thread_dispatch();
    }
}
    80014b8c:	03813083          	ld	ra,56(sp)
    80014b90:	03013403          	ld	s0,48(sp)
    80014b94:	02813483          	ld	s1,40(sp)
    80014b98:	04010113          	addi	sp,sp,64
    80014b9c:	00008067          	ret
            thread_dispatch();
    80014ba0:	fffff097          	auipc	ra,0xfffff
    80014ba4:	55c080e7          	jalr	1372(ra) # 800140fc <_Z15thread_dispatchv>
    80014ba8:	fcdff06f          	j	80014b74 <_Z12testSleepingv+0x80>

0000000080014bac <_Z8userMainv>:
//#include "ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

//#include "test1OS2.hpp"

void userMain()
{
    80014bac:	ff010113          	addi	sp,sp,-16
    80014bb0:	00113423          	sd	ra,8(sp)
    80014bb4:	00813023          	sd	s0,0(sp)
    80014bb8:	01010413          	addi	s0,sp,16
    //Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta

    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    testSleeping(); // thread_sleep test C API
    80014bbc:	00000097          	auipc	ra,0x0
    80014bc0:	f38080e7          	jalr	-200(ra) # 80014af4 <_Z12testSleepingv>
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    //userMainTest();
    80014bc4:	00813083          	ld	ra,8(sp)
    80014bc8:	00013403          	ld	s0,0(sp)
    80014bcc:	01010113          	addi	sp,sp,16
    80014bd0:	00008067          	ret

0000000080014bd4 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80014bd4:	fe010113          	addi	sp,sp,-32
    80014bd8:	00113c23          	sd	ra,24(sp)
    80014bdc:	00813823          	sd	s0,16(sp)
    80014be0:	00913423          	sd	s1,8(sp)
    80014be4:	01213023          	sd	s2,0(sp)
    80014be8:	02010413          	addi	s0,sp,32
    80014bec:	00050493          	mv	s1,a0
    80014bf0:	00058913          	mv	s2,a1
    80014bf4:	0015879b          	addiw	a5,a1,1
    80014bf8:	0007851b          	sext.w	a0,a5
    80014bfc:	00f4a023          	sw	a5,0(s1)
    80014c00:	0004a823          	sw	zero,16(s1)
    80014c04:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80014c08:	00251513          	slli	a0,a0,0x2
    80014c0c:	fffff097          	auipc	ra,0xfffff
    80014c10:	414080e7          	jalr	1044(ra) # 80014020 <_Z9mem_allocm>
    80014c14:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80014c18:	00000593          	li	a1,0
    80014c1c:	02048513          	addi	a0,s1,32
    80014c20:	fffff097          	auipc	ra,0xfffff
    80014c24:	524080e7          	jalr	1316(ra) # 80014144 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    80014c28:	00090593          	mv	a1,s2
    80014c2c:	01848513          	addi	a0,s1,24
    80014c30:	fffff097          	auipc	ra,0xfffff
    80014c34:	514080e7          	jalr	1300(ra) # 80014144 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    80014c38:	00100593          	li	a1,1
    80014c3c:	02848513          	addi	a0,s1,40
    80014c40:	fffff097          	auipc	ra,0xfffff
    80014c44:	504080e7          	jalr	1284(ra) # 80014144 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    80014c48:	00100593          	li	a1,1
    80014c4c:	03048513          	addi	a0,s1,48
    80014c50:	fffff097          	auipc	ra,0xfffff
    80014c54:	4f4080e7          	jalr	1268(ra) # 80014144 <_Z8sem_openPP4_semj>
}
    80014c58:	01813083          	ld	ra,24(sp)
    80014c5c:	01013403          	ld	s0,16(sp)
    80014c60:	00813483          	ld	s1,8(sp)
    80014c64:	00013903          	ld	s2,0(sp)
    80014c68:	02010113          	addi	sp,sp,32
    80014c6c:	00008067          	ret

0000000080014c70 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80014c70:	fe010113          	addi	sp,sp,-32
    80014c74:	00113c23          	sd	ra,24(sp)
    80014c78:	00813823          	sd	s0,16(sp)
    80014c7c:	00913423          	sd	s1,8(sp)
    80014c80:	01213023          	sd	s2,0(sp)
    80014c84:	02010413          	addi	s0,sp,32
    80014c88:	00050493          	mv	s1,a0
    80014c8c:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80014c90:	01853503          	ld	a0,24(a0)
    80014c94:	fffff097          	auipc	ra,0xfffff
    80014c98:	514080e7          	jalr	1300(ra) # 800141a8 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    80014c9c:	0304b503          	ld	a0,48(s1)
    80014ca0:	fffff097          	auipc	ra,0xfffff
    80014ca4:	508080e7          	jalr	1288(ra) # 800141a8 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    80014ca8:	0084b783          	ld	a5,8(s1)
    80014cac:	0144a703          	lw	a4,20(s1)
    80014cb0:	00271713          	slli	a4,a4,0x2
    80014cb4:	00e787b3          	add	a5,a5,a4
    80014cb8:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80014cbc:	0144a783          	lw	a5,20(s1)
    80014cc0:	0017879b          	addiw	a5,a5,1
    80014cc4:	0004a703          	lw	a4,0(s1)
    80014cc8:	02e7e7bb          	remw	a5,a5,a4
    80014ccc:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80014cd0:	0304b503          	ld	a0,48(s1)
    80014cd4:	fffff097          	auipc	ra,0xfffff
    80014cd8:	500080e7          	jalr	1280(ra) # 800141d4 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    80014cdc:	0204b503          	ld	a0,32(s1)
    80014ce0:	fffff097          	auipc	ra,0xfffff
    80014ce4:	4f4080e7          	jalr	1268(ra) # 800141d4 <_Z10sem_signalP4_sem>

}
    80014ce8:	01813083          	ld	ra,24(sp)
    80014cec:	01013403          	ld	s0,16(sp)
    80014cf0:	00813483          	ld	s1,8(sp)
    80014cf4:	00013903          	ld	s2,0(sp)
    80014cf8:	02010113          	addi	sp,sp,32
    80014cfc:	00008067          	ret

0000000080014d00 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80014d00:	fe010113          	addi	sp,sp,-32
    80014d04:	00113c23          	sd	ra,24(sp)
    80014d08:	00813823          	sd	s0,16(sp)
    80014d0c:	00913423          	sd	s1,8(sp)
    80014d10:	01213023          	sd	s2,0(sp)
    80014d14:	02010413          	addi	s0,sp,32
    80014d18:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80014d1c:	02053503          	ld	a0,32(a0)
    80014d20:	fffff097          	auipc	ra,0xfffff
    80014d24:	488080e7          	jalr	1160(ra) # 800141a8 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    80014d28:	0284b503          	ld	a0,40(s1)
    80014d2c:	fffff097          	auipc	ra,0xfffff
    80014d30:	47c080e7          	jalr	1148(ra) # 800141a8 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80014d34:	0084b703          	ld	a4,8(s1)
    80014d38:	0104a783          	lw	a5,16(s1)
    80014d3c:	00279693          	slli	a3,a5,0x2
    80014d40:	00d70733          	add	a4,a4,a3
    80014d44:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80014d48:	0017879b          	addiw	a5,a5,1
    80014d4c:	0004a703          	lw	a4,0(s1)
    80014d50:	02e7e7bb          	remw	a5,a5,a4
    80014d54:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80014d58:	0284b503          	ld	a0,40(s1)
    80014d5c:	fffff097          	auipc	ra,0xfffff
    80014d60:	478080e7          	jalr	1144(ra) # 800141d4 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    80014d64:	0184b503          	ld	a0,24(s1)
    80014d68:	fffff097          	auipc	ra,0xfffff
    80014d6c:	46c080e7          	jalr	1132(ra) # 800141d4 <_Z10sem_signalP4_sem>

    return ret;
}
    80014d70:	00090513          	mv	a0,s2
    80014d74:	01813083          	ld	ra,24(sp)
    80014d78:	01013403          	ld	s0,16(sp)
    80014d7c:	00813483          	ld	s1,8(sp)
    80014d80:	00013903          	ld	s2,0(sp)
    80014d84:	02010113          	addi	sp,sp,32
    80014d88:	00008067          	ret

0000000080014d8c <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80014d8c:	fe010113          	addi	sp,sp,-32
    80014d90:	00113c23          	sd	ra,24(sp)
    80014d94:	00813823          	sd	s0,16(sp)
    80014d98:	00913423          	sd	s1,8(sp)
    80014d9c:	01213023          	sd	s2,0(sp)
    80014da0:	02010413          	addi	s0,sp,32
    80014da4:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80014da8:	02853503          	ld	a0,40(a0)
    80014dac:	fffff097          	auipc	ra,0xfffff
    80014db0:	3fc080e7          	jalr	1020(ra) # 800141a8 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    80014db4:	0304b503          	ld	a0,48(s1)
    80014db8:	fffff097          	auipc	ra,0xfffff
    80014dbc:	3f0080e7          	jalr	1008(ra) # 800141a8 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80014dc0:	0144a783          	lw	a5,20(s1)
    80014dc4:	0104a903          	lw	s2,16(s1)
    80014dc8:	0327ce63          	blt	a5,s2,80014e04 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80014dcc:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80014dd0:	0304b503          	ld	a0,48(s1)
    80014dd4:	fffff097          	auipc	ra,0xfffff
    80014dd8:	400080e7          	jalr	1024(ra) # 800141d4 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    80014ddc:	0284b503          	ld	a0,40(s1)
    80014de0:	fffff097          	auipc	ra,0xfffff
    80014de4:	3f4080e7          	jalr	1012(ra) # 800141d4 <_Z10sem_signalP4_sem>

    return ret;
    80014de8:	00090513          	mv	a0,s2
    80014dec:	01813083          	ld	ra,24(sp)
    80014df0:	01013403          	ld	s0,16(sp)
    80014df4:	00813483          	ld	s1,8(sp)
    80014df8:	00013903          	ld	s2,0(sp)
    80014dfc:	02010113          	addi	sp,sp,32
    80014e00:	00008067          	ret
        ret = cap - head + tail;
    80014e04:	0004a703          	lw	a4,0(s1)
    80014e08:	4127093b          	subw	s2,a4,s2
    80014e0c:	00f9093b          	addw	s2,s2,a5
    80014e10:	fc1ff06f          	j	80014dd0 <_ZN6Buffer6getCntEv+0x44>

0000000080014e14 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80014e14:	fe010113          	addi	sp,sp,-32
    80014e18:	00113c23          	sd	ra,24(sp)
    80014e1c:	00813823          	sd	s0,16(sp)
    80014e20:	00913423          	sd	s1,8(sp)
    80014e24:	02010413          	addi	s0,sp,32
    80014e28:	00050493          	mv	s1,a0
    putc('\n');
    80014e2c:	00a00513          	li	a0,10
    80014e30:	fffff097          	auipc	ra,0xfffff
    80014e34:	4d0080e7          	jalr	1232(ra) # 80014300 <_Z4putcc>
    printString("Buffer deleted!\n");
    80014e38:	00001517          	auipc	a0,0x1
    80014e3c:	1c850513          	addi	a0,a0,456 # 80016000 <userDataStart>
    80014e40:	fffff097          	auipc	ra,0xfffff
    80014e44:	538080e7          	jalr	1336(ra) # 80014378 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80014e48:	00048513          	mv	a0,s1
    80014e4c:	00000097          	auipc	ra,0x0
    80014e50:	f40080e7          	jalr	-192(ra) # 80014d8c <_ZN6Buffer6getCntEv>
    80014e54:	02a05c63          	blez	a0,80014e8c <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80014e58:	0084b783          	ld	a5,8(s1)
    80014e5c:	0104a703          	lw	a4,16(s1)
    80014e60:	00271713          	slli	a4,a4,0x2
    80014e64:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80014e68:	0007c503          	lbu	a0,0(a5)
    80014e6c:	fffff097          	auipc	ra,0xfffff
    80014e70:	494080e7          	jalr	1172(ra) # 80014300 <_Z4putcc>
        head = (head + 1) % cap;
    80014e74:	0104a783          	lw	a5,16(s1)
    80014e78:	0017879b          	addiw	a5,a5,1
    80014e7c:	0004a703          	lw	a4,0(s1)
    80014e80:	02e7e7bb          	remw	a5,a5,a4
    80014e84:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80014e88:	fc1ff06f          	j	80014e48 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80014e8c:	02100513          	li	a0,33
    80014e90:	fffff097          	auipc	ra,0xfffff
    80014e94:	470080e7          	jalr	1136(ra) # 80014300 <_Z4putcc>
    putc('\n');
    80014e98:	00a00513          	li	a0,10
    80014e9c:	fffff097          	auipc	ra,0xfffff
    80014ea0:	464080e7          	jalr	1124(ra) # 80014300 <_Z4putcc>
    mem_free(buffer);
    80014ea4:	0084b503          	ld	a0,8(s1)
    80014ea8:	fffff097          	auipc	ra,0xfffff
    80014eac:	1a8080e7          	jalr	424(ra) # 80014050 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80014eb0:	0204b503          	ld	a0,32(s1)
    80014eb4:	fffff097          	auipc	ra,0xfffff
    80014eb8:	2c8080e7          	jalr	712(ra) # 8001417c <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80014ebc:	0184b503          	ld	a0,24(s1)
    80014ec0:	fffff097          	auipc	ra,0xfffff
    80014ec4:	2bc080e7          	jalr	700(ra) # 8001417c <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80014ec8:	0304b503          	ld	a0,48(s1)
    80014ecc:	fffff097          	auipc	ra,0xfffff
    80014ed0:	2b0080e7          	jalr	688(ra) # 8001417c <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    80014ed4:	0284b503          	ld	a0,40(s1)
    80014ed8:	fffff097          	auipc	ra,0xfffff
    80014edc:	2a4080e7          	jalr	676(ra) # 8001417c <_Z9sem_closeP4_sem>
}
    80014ee0:	01813083          	ld	ra,24(sp)
    80014ee4:	01013403          	ld	s0,16(sp)
    80014ee8:	00813483          	ld	s1,8(sp)
    80014eec:	02010113          	addi	sp,sp,32
    80014ef0:	00008067          	ret

0000000080014ef4 <_ZN6Thread6runnerEPv>:
    myHandle = nullptr;
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
}

void Thread::runner(void *t)
{
    80014ef4:	ff010113          	addi	sp,sp,-16
    80014ef8:	00113423          	sd	ra,8(sp)
    80014efc:	00813023          	sd	s0,0(sp)
    80014f00:	01010413          	addi	s0,sp,16
    Thread* thr = (Thread*)t;
    thr->run();
    80014f04:	00053783          	ld	a5,0(a0)
    80014f08:	0107b783          	ld	a5,16(a5)
    80014f0c:	000780e7          	jalr	a5
}
    80014f10:	00813083          	ld	ra,8(sp)
    80014f14:	00013403          	ld	s0,0(sp)
    80014f18:	01010113          	addi	sp,sp,16
    80014f1c:	00008067          	ret

0000000080014f20 <_ZN6ThreadD1Ev>:

Thread::~Thread()
    80014f20:	00001797          	auipc	a5,0x1
    80014f24:	16078793          	addi	a5,a5,352 # 80016080 <_ZTV6Thread+0x10>
    80014f28:	00f53023          	sd	a5,0(a0)
{
    delete myHandle;
    80014f2c:	00853503          	ld	a0,8(a0)
    80014f30:	02050663          	beqz	a0,80014f5c <_ZN6ThreadD1Ev+0x3c>
Thread::~Thread()
    80014f34:	ff010113          	addi	sp,sp,-16
    80014f38:	00113423          	sd	ra,8(sp)
    80014f3c:	00813023          	sd	s0,0(sp)
    80014f40:	01010413          	addi	s0,sp,16
    delete myHandle;
    80014f44:	fffff097          	auipc	ra,0xfffff
    80014f48:	40c080e7          	jalr	1036(ra) # 80014350 <_ZN7_threaddlEPv>
}
    80014f4c:	00813083          	ld	ra,8(sp)
    80014f50:	00013403          	ld	s0,0(sp)
    80014f54:	01010113          	addi	sp,sp,16
    80014f58:	00008067          	ret
    80014f5c:	00008067          	ret

0000000080014f60 <_ZN9SemaphoreD1Ev>:
    if(myHandle == nullptr)
        return -1;
    return sem_signal(myHandle);
}

Semaphore::~Semaphore() {
    80014f60:	00001797          	auipc	a5,0x1
    80014f64:	14878793          	addi	a5,a5,328 # 800160a8 <_ZTV9Semaphore+0x10>
    80014f68:	00f53023          	sd	a5,0(a0)
    delete myHandle;
    80014f6c:	00853503          	ld	a0,8(a0)
    80014f70:	02050663          	beqz	a0,80014f9c <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    80014f74:	ff010113          	addi	sp,sp,-16
    80014f78:	00113423          	sd	ra,8(sp)
    80014f7c:	00813023          	sd	s0,0(sp)
    80014f80:	01010413          	addi	s0,sp,16
    delete myHandle;
    80014f84:	00000097          	auipc	ra,0x0
    80014f88:	4c4080e7          	jalr	1220(ra) # 80015448 <_ZN4_semdlEPv>
}
    80014f8c:	00813083          	ld	ra,8(sp)
    80014f90:	00013403          	ld	s0,0(sp)
    80014f94:	01010113          	addi	sp,sp,16
    80014f98:	00008067          	ret
    80014f9c:	00008067          	ret

0000000080014fa0 <_Znwm>:
{
    80014fa0:	ff010113          	addi	sp,sp,-16
    80014fa4:	00113423          	sd	ra,8(sp)
    80014fa8:	00813023          	sd	s0,0(sp)
    80014fac:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80014fb0:	fffff097          	auipc	ra,0xfffff
    80014fb4:	070080e7          	jalr	112(ra) # 80014020 <_Z9mem_allocm>
}
    80014fb8:	00813083          	ld	ra,8(sp)
    80014fbc:	00013403          	ld	s0,0(sp)
    80014fc0:	01010113          	addi	sp,sp,16
    80014fc4:	00008067          	ret

0000000080014fc8 <_ZdlPv>:
{
    80014fc8:	ff010113          	addi	sp,sp,-16
    80014fcc:	00113423          	sd	ra,8(sp)
    80014fd0:	00813023          	sd	s0,0(sp)
    80014fd4:	01010413          	addi	s0,sp,16
    mem_free(p);
    80014fd8:	fffff097          	auipc	ra,0xfffff
    80014fdc:	078080e7          	jalr	120(ra) # 80014050 <_Z8mem_freePv>
}
    80014fe0:	00813083          	ld	ra,8(sp)
    80014fe4:	00013403          	ld	s0,0(sp)
    80014fe8:	01010113          	addi	sp,sp,16
    80014fec:	00008067          	ret

0000000080014ff0 <_ZN6ThreadD0Ev>:
Thread::~Thread()
    80014ff0:	fe010113          	addi	sp,sp,-32
    80014ff4:	00113c23          	sd	ra,24(sp)
    80014ff8:	00813823          	sd	s0,16(sp)
    80014ffc:	00913423          	sd	s1,8(sp)
    80015000:	02010413          	addi	s0,sp,32
    80015004:	00050493          	mv	s1,a0
}
    80015008:	00000097          	auipc	ra,0x0
    8001500c:	f18080e7          	jalr	-232(ra) # 80014f20 <_ZN6ThreadD1Ev>
    80015010:	00048513          	mv	a0,s1
    80015014:	00000097          	auipc	ra,0x0
    80015018:	fb4080e7          	jalr	-76(ra) # 80014fc8 <_ZdlPv>
    8001501c:	01813083          	ld	ra,24(sp)
    80015020:	01013403          	ld	s0,16(sp)
    80015024:	00813483          	ld	s1,8(sp)
    80015028:	02010113          	addi	sp,sp,32
    8001502c:	00008067          	ret

0000000080015030 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80015030:	fe010113          	addi	sp,sp,-32
    80015034:	00113c23          	sd	ra,24(sp)
    80015038:	00813823          	sd	s0,16(sp)
    8001503c:	00913423          	sd	s1,8(sp)
    80015040:	02010413          	addi	s0,sp,32
    80015044:	00050493          	mv	s1,a0
}
    80015048:	00000097          	auipc	ra,0x0
    8001504c:	f18080e7          	jalr	-232(ra) # 80014f60 <_ZN9SemaphoreD1Ev>
    80015050:	00048513          	mv	a0,s1
    80015054:	00000097          	auipc	ra,0x0
    80015058:	f74080e7          	jalr	-140(ra) # 80014fc8 <_ZdlPv>
    8001505c:	01813083          	ld	ra,24(sp)
    80015060:	01013403          	ld	s0,16(sp)
    80015064:	00813483          	ld	s1,8(sp)
    80015068:	02010113          	addi	sp,sp,32
    8001506c:	00008067          	ret

0000000080015070 <_ZN6Thread5startEv>:
    if(myHandle != nullptr)
    80015070:	00853503          	ld	a0,8(a0)
    80015074:	02050663          	beqz	a0,800150a0 <_ZN6Thread5startEv+0x30>
{
    80015078:	ff010113          	addi	sp,sp,-16
    8001507c:	00113423          	sd	ra,8(sp)
    80015080:	00813023          	sd	s0,0(sp)
    80015084:	01010413          	addi	s0,sp,16
        return thread_start(myHandle);
    80015088:	fffff097          	auipc	ra,0xfffff
    8001508c:	1a4080e7          	jalr	420(ra) # 8001422c <_Z12thread_startPv>
}
    80015090:	00813083          	ld	ra,8(sp)
    80015094:	00013403          	ld	s0,0(sp)
    80015098:	01010113          	addi	sp,sp,16
    8001509c:	00008067          	ret
        return -1;
    800150a0:	fff00513          	li	a0,-1
}
    800150a4:	00008067          	ret

00000000800150a8 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    800150a8:	ff010113          	addi	sp,sp,-16
    800150ac:	00113423          	sd	ra,8(sp)
    800150b0:	00813023          	sd	s0,0(sp)
    800150b4:	01010413          	addi	s0,sp,16
    thread_dispatch();
    800150b8:	fffff097          	auipc	ra,0xfffff
    800150bc:	044080e7          	jalr	68(ra) # 800140fc <_Z15thread_dispatchv>
}
    800150c0:	00813083          	ld	ra,8(sp)
    800150c4:	00013403          	ld	s0,0(sp)
    800150c8:	01010113          	addi	sp,sp,16
    800150cc:	00008067          	ret

00000000800150d0 <_ZN6Thread5sleepEm>:
{
    800150d0:	ff010113          	addi	sp,sp,-16
    800150d4:	00113423          	sd	ra,8(sp)
    800150d8:	00813023          	sd	s0,0(sp)
    800150dc:	01010413          	addi	s0,sp,16
    time_sleep(time);
    800150e0:	fffff097          	auipc	ra,0xfffff
    800150e4:	120080e7          	jalr	288(ra) # 80014200 <_Z10time_sleepm>
}
    800150e8:	00813083          	ld	ra,8(sp)
    800150ec:	00013403          	ld	s0,0(sp)
    800150f0:	01010113          	addi	sp,sp,16
    800150f4:	00008067          	ret

00000000800150f8 <_ZN14PeriodicThread6runnerEPv>:
{

}

void PeriodicThread::runner(void* arg)
{
    800150f8:	fe010113          	addi	sp,sp,-32
    800150fc:	00113c23          	sd	ra,24(sp)
    80015100:	00813823          	sd	s0,16(sp)
    80015104:	00913423          	sd	s1,8(sp)
    80015108:	01213023          	sd	s2,0(sp)
    8001510c:	02010413          	addi	s0,sp,32
    PeriodicThread *pThread =(PeriodicThread*) ((ArgsPeriodic*)arg)->pt;
    80015110:	00053483          	ld	s1,0(a0)
    uint64 time = ((ArgsPeriodic*)arg)->time;
    80015114:	00853903          	ld	s2,8(a0)

    while(true)
    {
        pThread->periodicActivation();
    80015118:	0004b783          	ld	a5,0(s1)
    8001511c:	0187b783          	ld	a5,24(a5)
    80015120:	00048513          	mv	a0,s1
    80015124:	000780e7          	jalr	a5
        Thread::sleep(time);
    80015128:	00090513          	mv	a0,s2
    8001512c:	00000097          	auipc	ra,0x0
    80015130:	fa4080e7          	jalr	-92(ra) # 800150d0 <_ZN6Thread5sleepEm>
    while(true)
    80015134:	fe5ff06f          	j	80015118 <_ZN14PeriodicThread6runnerEPv+0x20>

0000000080015138 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *args)
    80015138:	ff010113          	addi	sp,sp,-16
    8001513c:	00113423          	sd	ra,8(sp)
    80015140:	00813023          	sd	s0,0(sp)
    80015144:	01010413          	addi	s0,sp,16
    80015148:	00001797          	auipc	a5,0x1
    8001514c:	f3878793          	addi	a5,a5,-200 # 80016080 <_ZTV6Thread+0x10>
    80015150:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    80015154:	00053423          	sd	zero,8(a0)
    thread_make_pcb(&myHandle, body, args);
    80015158:	00850513          	addi	a0,a0,8
    8001515c:	fffff097          	auipc	ra,0xfffff
    80015160:	0fc080e7          	jalr	252(ra) # 80014258 <_Z15thread_make_pcbPP7_threadPFvPvES2_>
}
    80015164:	00813083          	ld	ra,8(sp)
    80015168:	00013403          	ld	s0,0(sp)
    8001516c:	01010113          	addi	sp,sp,16
    80015170:	00008067          	ret

0000000080015174 <_ZN6ThreadC1Ev>:
Thread::Thread()
    80015174:	ff010113          	addi	sp,sp,-16
    80015178:	00113423          	sd	ra,8(sp)
    8001517c:	00813023          	sd	s0,0(sp)
    80015180:	01010413          	addi	s0,sp,16
    80015184:	00001797          	auipc	a5,0x1
    80015188:	efc78793          	addi	a5,a5,-260 # 80016080 <_ZTV6Thread+0x10>
    8001518c:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    80015190:	00053423          	sd	zero,8(a0)
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
    80015194:	00050613          	mv	a2,a0
    80015198:	00000597          	auipc	a1,0x0
    8001519c:	d5c58593          	addi	a1,a1,-676 # 80014ef4 <_ZN6Thread6runnerEPv>
    800151a0:	00850513          	addi	a0,a0,8
    800151a4:	fffff097          	auipc	ra,0xfffff
    800151a8:	0b4080e7          	jalr	180(ra) # 80014258 <_Z15thread_make_pcbPP7_threadPFvPvES2_>
}
    800151ac:	00813083          	ld	ra,8(sp)
    800151b0:	00013403          	ld	s0,0(sp)
    800151b4:	01010113          	addi	sp,sp,16
    800151b8:	00008067          	ret

00000000800151bc <_ZN9Semaphore4waitEv>:
    if(myHandle == nullptr)
    800151bc:	00853503          	ld	a0,8(a0)
    800151c0:	02050663          	beqz	a0,800151ec <_ZN9Semaphore4waitEv+0x30>
{
    800151c4:	ff010113          	addi	sp,sp,-16
    800151c8:	00113423          	sd	ra,8(sp)
    800151cc:	00813023          	sd	s0,0(sp)
    800151d0:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    800151d4:	fffff097          	auipc	ra,0xfffff
    800151d8:	fd4080e7          	jalr	-44(ra) # 800141a8 <_Z8sem_waitP4_sem>
}
    800151dc:	00813083          	ld	ra,8(sp)
    800151e0:	00013403          	ld	s0,0(sp)
    800151e4:	01010113          	addi	sp,sp,16
    800151e8:	00008067          	ret
        return -1;
    800151ec:	fff00513          	li	a0,-1
}
    800151f0:	00008067          	ret

00000000800151f4 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init)
    800151f4:	fe010113          	addi	sp,sp,-32
    800151f8:	00113c23          	sd	ra,24(sp)
    800151fc:	00813823          	sd	s0,16(sp)
    80015200:	00913423          	sd	s1,8(sp)
    80015204:	02010413          	addi	s0,sp,32
    80015208:	00050493          	mv	s1,a0
    8001520c:	00001797          	auipc	a5,0x1
    80015210:	e9c78793          	addi	a5,a5,-356 # 800160a8 <_ZTV9Semaphore+0x10>
    80015214:	00f53023          	sd	a5,0(a0)
    int retval = sem_open(&myHandle, init);
    80015218:	00850513          	addi	a0,a0,8
    8001521c:	fffff097          	auipc	ra,0xfffff
    80015220:	f28080e7          	jalr	-216(ra) # 80014144 <_Z8sem_openPP4_semj>
    if(retval != 0)
    80015224:	00050463          	beqz	a0,8001522c <_ZN9SemaphoreC1Ej+0x38>
        myHandle = nullptr;
    80015228:	0004b423          	sd	zero,8(s1)
}
    8001522c:	01813083          	ld	ra,24(sp)
    80015230:	01013403          	ld	s0,16(sp)
    80015234:	00813483          	ld	s1,8(sp)
    80015238:	02010113          	addi	sp,sp,32
    8001523c:	00008067          	ret

0000000080015240 <_ZN9Semaphore6signalEv>:
    if(myHandle == nullptr)
    80015240:	00853503          	ld	a0,8(a0)
    80015244:	02050663          	beqz	a0,80015270 <_ZN9Semaphore6signalEv+0x30>
{
    80015248:	ff010113          	addi	sp,sp,-16
    8001524c:	00113423          	sd	ra,8(sp)
    80015250:	00813023          	sd	s0,0(sp)
    80015254:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80015258:	fffff097          	auipc	ra,0xfffff
    8001525c:	f7c080e7          	jalr	-132(ra) # 800141d4 <_Z10sem_signalP4_sem>
}
    80015260:	00813083          	ld	ra,8(sp)
    80015264:	00013403          	ld	s0,0(sp)
    80015268:	01010113          	addi	sp,sp,16
    8001526c:	00008067          	ret
        return -1;
    80015270:	fff00513          	li	a0,-1
}
    80015274:	00008067          	ret

0000000080015278 <_ZN7Console4getcEv>:
{
    80015278:	ff010113          	addi	sp,sp,-16
    8001527c:	00113423          	sd	ra,8(sp)
    80015280:	00813023          	sd	s0,0(sp)
    80015284:	01010413          	addi	s0,sp,16
    return ::getc();
    80015288:	fffff097          	auipc	ra,0xfffff
    8001528c:	050080e7          	jalr	80(ra) # 800142d8 <_Z4getcv>
}
    80015290:	00813083          	ld	ra,8(sp)
    80015294:	00013403          	ld	s0,0(sp)
    80015298:	01010113          	addi	sp,sp,16
    8001529c:	00008067          	ret

00000000800152a0 <_ZN7Console4putcEc>:
{
    800152a0:	ff010113          	addi	sp,sp,-16
    800152a4:	00113423          	sd	ra,8(sp)
    800152a8:	00813023          	sd	s0,0(sp)
    800152ac:	01010413          	addi	s0,sp,16
    return ::putc(c);
    800152b0:	fffff097          	auipc	ra,0xfffff
    800152b4:	050080e7          	jalr	80(ra) # 80014300 <_Z4putcc>
}
    800152b8:	00813083          	ld	ra,8(sp)
    800152bc:	00013403          	ld	s0,0(sp)
    800152c0:	01010113          	addi	sp,sp,16
    800152c4:	00008067          	ret

00000000800152c8 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    800152c8:	fe010113          	addi	sp,sp,-32
    800152cc:	00113c23          	sd	ra,24(sp)
    800152d0:	00813823          	sd	s0,16(sp)
    800152d4:	00913423          	sd	s1,8(sp)
    800152d8:	01213023          	sd	s2,0(sp)
    800152dc:	02010413          	addi	s0,sp,32
    800152e0:	00050493          	mv	s1,a0
    800152e4:	00058913          	mv	s2,a1
    800152e8:	01000513          	li	a0,16
    800152ec:	00000097          	auipc	ra,0x0
    800152f0:	cb4080e7          	jalr	-844(ra) # 80014fa0 <_Znwm>
    800152f4:	00050613          	mv	a2,a0
    800152f8:	00050663          	beqz	a0,80015304 <_ZN14PeriodicThreadC1Em+0x3c>
    ArgsPeriodic(void *p, uint64 t) : pt(p), time(t){}
    800152fc:	00953023          	sd	s1,0(a0)
    80015300:	01253423          	sd	s2,8(a0)
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    80015304:	00000597          	auipc	a1,0x0
    80015308:	df458593          	addi	a1,a1,-524 # 800150f8 <_ZN14PeriodicThread6runnerEPv>
    8001530c:	00048513          	mv	a0,s1
    80015310:	00000097          	auipc	ra,0x0
    80015314:	e28080e7          	jalr	-472(ra) # 80015138 <_ZN6ThreadC1EPFvPvES0_>
    80015318:	00001797          	auipc	a5,0x1
    8001531c:	d3878793          	addi	a5,a5,-712 # 80016050 <_ZTV14PeriodicThread+0x10>
    80015320:	00f4b023          	sd	a5,0(s1)
}
    80015324:	01813083          	ld	ra,24(sp)
    80015328:	01013403          	ld	s0,16(sp)
    8001532c:	00813483          	ld	s1,8(sp)
    80015330:	00013903          	ld	s2,0(sp)
    80015334:	02010113          	addi	sp,sp,32
    80015338:	00008067          	ret

000000008001533c <_ZN6Thread3runEv>:
    static void sleep(time_t);

protected:
    Thread();

    virtual void run() {}
    8001533c:	ff010113          	addi	sp,sp,-16
    80015340:	00813423          	sd	s0,8(sp)
    80015344:	01010413          	addi	s0,sp,16
    80015348:	00813403          	ld	s0,8(sp)
    8001534c:	01010113          	addi	sp,sp,16
    80015350:	00008067          	ret

0000000080015354 <_ZN14PeriodicThread18periodicActivationEv>:

class PeriodicThread : public Thread
{
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {};
    80015354:	ff010113          	addi	sp,sp,-16
    80015358:	00813423          	sd	s0,8(sp)
    8001535c:	01010413          	addi	s0,sp,16
    80015360:	00813403          	ld	s0,8(sp)
    80015364:	01010113          	addi	sp,sp,16
    80015368:	00008067          	ret

000000008001536c <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread
    8001536c:	ff010113          	addi	sp,sp,-16
    80015370:	00113423          	sd	ra,8(sp)
    80015374:	00813023          	sd	s0,0(sp)
    80015378:	01010413          	addi	s0,sp,16
    8001537c:	00001797          	auipc	a5,0x1
    80015380:	cd478793          	addi	a5,a5,-812 # 80016050 <_ZTV14PeriodicThread+0x10>
    80015384:	00f53023          	sd	a5,0(a0)
    80015388:	00000097          	auipc	ra,0x0
    8001538c:	b98080e7          	jalr	-1128(ra) # 80014f20 <_ZN6ThreadD1Ev>
    80015390:	00813083          	ld	ra,8(sp)
    80015394:	00013403          	ld	s0,0(sp)
    80015398:	01010113          	addi	sp,sp,16
    8001539c:	00008067          	ret

00000000800153a0 <_ZN14PeriodicThreadD0Ev>:
    800153a0:	fe010113          	addi	sp,sp,-32
    800153a4:	00113c23          	sd	ra,24(sp)
    800153a8:	00813823          	sd	s0,16(sp)
    800153ac:	00913423          	sd	s1,8(sp)
    800153b0:	02010413          	addi	s0,sp,32
    800153b4:	00050493          	mv	s1,a0
    800153b8:	00001797          	auipc	a5,0x1
    800153bc:	c9878793          	addi	a5,a5,-872 # 80016050 <_ZTV14PeriodicThread+0x10>
    800153c0:	00f53023          	sd	a5,0(a0)
    800153c4:	00000097          	auipc	ra,0x0
    800153c8:	b5c080e7          	jalr	-1188(ra) # 80014f20 <_ZN6ThreadD1Ev>
    800153cc:	00048513          	mv	a0,s1
    800153d0:	00000097          	auipc	ra,0x0
    800153d4:	bf8080e7          	jalr	-1032(ra) # 80014fc8 <_ZdlPv>
    800153d8:	01813083          	ld	ra,24(sp)
    800153dc:	01013403          	ld	s0,16(sp)
    800153e0:	00813483          	ld	s1,8(sp)
    800153e4:	02010113          	addi	sp,sp,32
    800153e8:	00008067          	ret

00000000800153ec <_ZN14PCBWrapperUser15userMainWrapperEPv>:
#include "../../h/PCBWrapperUser.hpp"
#include "../../h/syscall_c.hpp"
#include "test/userMain.hpp"

void PCBWrapperUser::userMainWrapper(void* a)
{
    800153ec:	ff010113          	addi	sp,sp,-16
    800153f0:	00113423          	sd	ra,8(sp)
    800153f4:	00813023          	sd	s0,0(sp)
    800153f8:	01010413          	addi	s0,sp,16
    userMain();
    800153fc:	fffff097          	auipc	ra,0xfffff
    80015400:	7b0080e7          	jalr	1968(ra) # 80014bac <_Z8userMainv>
}
    80015404:	00813083          	ld	ra,8(sp)
    80015408:	00013403          	ld	s0,0(sp)
    8001540c:	01010113          	addi	sp,sp,16
    80015410:	00008067          	ret

0000000080015414 <_ZN14PCBWrapperUser11wrapperUserEPFvPvES0_>:

void PCBWrapperUser::wrapperUser(Body body, void* args)
{
    80015414:	ff010113          	addi	sp,sp,-16
    80015418:	00113423          	sd	ra,8(sp)
    8001541c:	00813023          	sd	s0,0(sp)
    80015420:	01010413          	addi	s0,sp,16
    80015424:	00050793          	mv	a5,a0
    body(args);
    80015428:	00058513          	mv	a0,a1
    8001542c:	000780e7          	jalr	a5
    thread_exit();
    80015430:	fffff097          	auipc	ra,0xfffff
    80015434:	cec080e7          	jalr	-788(ra) # 8001411c <_Z11thread_exitv>
    80015438:	00813083          	ld	ra,8(sp)
    8001543c:	00013403          	ld	s0,0(sp)
    80015440:	01010113          	addi	sp,sp,16
    80015444:	00008067          	ret

0000000080015448 <_ZN4_semdlEPv>:
//

#include "../../h/_sem.hpp"
#include "../../h/syscall_c.hpp"

void _sem::operator delete(void *p) {
    80015448:	ff010113          	addi	sp,sp,-16
    8001544c:	00113423          	sd	ra,8(sp)
    80015450:	00813023          	sd	s0,0(sp)
    80015454:	01010413          	addi	s0,sp,16
    sem_close((sem_t)p);
    80015458:	fffff097          	auipc	ra,0xfffff
    8001545c:	d24080e7          	jalr	-732(ra) # 8001417c <_Z9sem_closeP4_sem>
}
    80015460:	00813083          	ld	ra,8(sp)
    80015464:	00013403          	ld	s0,0(sp)
    80015468:	01010113          	addi	sp,sp,16
    8001546c:	00008067          	ret
	...

0000000080016000 <userDataStart>:
    80016000:	7542                	ld	a0,48(sp)
    80016002:	6666                	ld	a2,88(sp)
    80016004:	7265                	lui	tp,0xffff9
    80016006:	6420                	ld	s0,72(s0)
    80016008:	6c65                	lui	s8,0x19
    8001600a:	7465                	lui	s0,0xffff9
    8001600c:	6465                	lui	s0,0x19
    8001600e:	0a21                	addi	s4,s4,8
	...
    80016018:	6548                	ld	a0,136(a0)
    8001601a:	6c6c                	ld	a1,216(s0)
    8001601c:	0000206f          	j	8001801c <end+0x101c>
    80016020:	2120                	fld	fs0,64(a0)
    80016022:	000a                	c.slli	zero,0x2
    80016024:	0000                	unimp
	...

0000000080016028 <digits>:
    80016028:	3130 3332 3534 3736 3938 4241 4443 4645     0123456789ABCDEF
	...

0000000080016040 <_ZTV14PeriodicThread>:
	...
    80016050:	536c 8001 0000 0000 53a0 8001 0000 0000     lS.......S......
    80016060:	533c 8001 0000 0000 5354 8001 0000 0000     <S......TS......

0000000080016070 <_ZTV6Thread>:
	...
    80016080:	4f20 8001 0000 0000 4ff0 8001 0000 0000      O.......O......
    80016090:	533c 8001 0000 0000                         <S......

0000000080016098 <_ZTV9Semaphore>:
	...
    800160a8:	4f60 8001 0000 0000 5030 8001 0000 0000     `O......0P......

00000000800160b8 <lockPrint>:
	...

00000000800160c0 <finished>:
	...
    800160c8:	0010 0000 0000 0000 7a03 0052 7c01 0101     .........zR..|..
    800160d8:	0d1b 0002 0020 0000 0018 0000 df3c ffff     .... .......<...
    800160e8:	0030 0000 4400 100e 8844 4402 000c 0000     0....D..D..D....
    800160f8:	0c00 1002 0e44 0000 0020 0000 003c 0000     ....D... ...<...
    80016108:	df48 ffff 002c 0000 4400 100e 8844 4402     H...,....D..D..D
    80016118:	000c 0000 0c00 1002 0e44 0000 0034 0000     ........D...4...
    80016128:	0060 0000 df50 ffff 0080 0000 4400 000e     `...P........D..
	...
    80016140:	9300 440a 080c 0000 0000 0000 0c00 3002     ...D...........0
    80016150:	c944 d244 d344 0e44 4400 000b 0020 0000     D.D.D.D..D.. ...
    80016160:	0098 0000 df98 ffff 0020 0000 4400 100e     ........ ....D..
    80016170:	8844 4402 000c 0000 0c00 1002 0e44 0000     D..D........D...
    80016180:	0020 0000 00bc 0000 df94 ffff 0028 0000      ...........(...
    80016190:	4400 100e 8844 4402 000c 0000 0c00 1002     .D..D..D........
    800161a0:	0e44 0000 0020 0000 00e0 0000 df98 ffff     D... ...........
    800161b0:	0038 0000 4400 100e 8844 4402 000c 0000     8....D..D..D....
    800161c0:	0c00 1002 0e44 0000 0020 0000 0104 0000     ....D... .......
    800161d0:	dfac ffff 002c 0000 4400 100e 8844 4402     ....,....D..D..D
    800161e0:	000c 0000 0c00 1002 0e44 0000 0020 0000     ........D... ...
    800161f0:	0128 0000 dfb4 ffff 002c 0000 4400 100e     (.......,....D..
    80016200:	8844 4402 000c 0000 0c00 1002 0e44 0000     D..D........D...
    80016210:	0020 0000 014c 0000 dfbc ffff 002c 0000      ...L.......,...
    80016220:	4400 100e 8844 4402 000c 0000 0c00 1002     .D..D..D........
    80016230:	0e44 0000 0020 0000 0170 0000 dfc4 ffff     D... ...p.......
    80016240:	002c 0000 4400 100e 8844 4402 000c 0000     ,....D..D..D....
    80016250:	0c00 1002 0e44 0000 0020 0000 0194 0000     ....D... .......
    80016260:	dfcc ffff 002c 0000 4400 100e 8844 4402     ....,....D..D..D
    80016270:	000c 0000 0c00 1002 0e44 0000 0034 0000     ........D...4...
    80016280:	01b8 0000 dfd4 ffff 0080 0000 4400 000e     .............D..
	...
    80016298:	9300 440a 080c 0000 0000 0000 0c00 3002     ...D...........0
    800162a8:	c944 d244 d344 0e44 4400 000b 0020 0000     D.D.D.D..D.. ...
    800162b8:	01f0 0000 e01c ffff 0028 0000 4400 100e     ........(....D..
    800162c8:	8844 4402 000c 0000 0c00 1002 0e44 0000     D..D........D...
    800162d8:	0020 0000 0214 0000 e020 ffff 0024 0000      ....... ...$...
    800162e8:	4400 100e 8844 4402 000c 0000 0c00 1002     .D..D..D........
    800162f8:	0e44 0000 0020 0000 0238 0000 e020 ffff     D... ...8... ...
    80016308:	002c 0000 4400 100e 8844 4402 000c 0000     ,....D..D..D....
    80016318:	0c00 1002 0e44 0000 0010 0000 0000 0000     ....D...........
    80016328:	7a03 0052 7c01 0101 0d1b 0002 0028 0000     .zR..|......(...
    80016338:	0018 0000 e014 ffff 0028 0000 4400 000e     ........(....D..
    80016348:	0000 8800 4404 080c 0000 0000 0c00 1002     .....D..........
    80016358:	0e44 0000 0000 0000 0010 0000 0000 0000     D...............
    80016368:	7a03 0052 7c01 0101 0d1b 0002 0028 0000     .zR..|......(...
    80016378:	0018 0000 dffc ffff 007c 0000 4400 000e     ........|....D..
    80016388:	0000 0000 8900 4406 080c 0200 0000 0000     .......D........
    80016398:	020c 4420 44c9 000e 0034 0000 0044 0000     .. D.D..4...D...
    800163a8:	e04c ffff 00cc 0000 4400 000e 0000 0000     L........D......
    800163b8:	0000 0000 0000 9400 440c 080c 0200 0000     .........D......
    800163c8:	0000 020c 4430 44c9 44d2 44d3 44d4 000e     ....0D.D.D.D.D..
    800163d8:	0020 0000 007c 0000 e0e0 ffff 0050 0000      ...|.......P...
    800163e8:	4400 100e 8844 4402 000c 0000 0c00 1002     .D..D..D........
    800163f8:	0e44 0000 0030 0000 00a0 0000 e10c ffff     D...0...........
    80016408:	0114 0000 4400 000e 0000 0000 0000 0000     .....D..........
    80016418:	9300 440a 080c 0200 0000 0000 020c 4440     ...D..........@D
    80016428:	44c9 44d2 44d3 000e 0018 0000 0000 0000     .D.D.D..........
    80016438:	7a03 4c50 0052 7c01 0701 1d9b ff24 1bff     .zPLR..|....$...
    80016448:	0d1b 0002 0038 0000 0020 0000 e1d0 ffff     ....8... .......
    80016458:	0164 0000 3c04 ff23 44ff 000e 0000 0000     d....<#..D......
    80016468:	0000 0000 9300 440a 080c 0000 0000 0000     .......D........
    80016478:	0c00 3002 c944 d244 d344 0e44 4400 000b     ...0D.D.D.D..D..
    80016488:	0010 0000 0000 0000 7a03 0052 7c01 0101     .........zR..|..
    80016498:	0d1b 0002 002c 0000 0018 0000 e2e4 ffff     ....,...........
    800164a8:	0090 0000 4400 000e 0000 0000 0000 9200     .....D..........
    800164b8:	4408 080c 0200 0000 0000 020c 4420 44c9     .D.......... D.D
    800164c8:	44d2 000e 002c 0000 0048 0000 e344 ffff     .D..,...H...D...
    800164d8:	008c 0000 4400 000e 0000 0000 0000 9200     .....D..........
    800164e8:	4408 080c 0200 0000 0000 020c 4420 44c9     .D.......... D.D
    800164f8:	44d2 000e 0030 0000 0078 0000 e3a0 ffff     .D..0...x.......
    80016508:	0088 0000 4400 000e 0000 0000 0000 9200     .....D..........
    80016518:	4408 080c 0000 0000 0000 0c00 2002 c944     .D........... D.
    80016528:	d244 0e44 4400 000b 002c 0000 0104 0000     D.D..D..,.......
    80016538:	e3f4 ffff 0100 0000 f904 ff22 44ff 000e     .........."..D..
    80016548:	0000 0000 8900 4406 080c 0200 0000 0000     .......D........
    80016558:	020c 4420 44c9 000e 0010 0000 0000 0000     .. D.D..........
    80016568:	7a03 0052 7c01 0101 0d1b 0002 002c 0000     .zR..|......,...
    80016578:	0018 0000 e4b0 ffff 00c8 0000 4400 000e     .............D..
    80016588:	0000 0000 0000 9200 4408 080c 0200 0000     .........D......
    80016598:	0000 020c 4420 44c9 44d2 000e 002c 0000     .... D.D.D..,...
    800165a8:	0048 0000 e548 ffff 00b8 0000 4400 000e     H...H........D..
    800165b8:	0000 0000 8900 4406 080c 0000 0000 0000     .......D........
    800165c8:	0c00 4002 c944 0e44 4400 000b 0028 0000     ...@D.D..D..(...
    800165d8:	0078 0000 e5d0 ffff 0028 0000 4400 000e     x.......(....D..
    800165e8:	0000 8800 4404 080c 0000 0000 0c00 1002     .....D..........
    800165f8:	0e44 0000 0000 0000 0010 0000 0000 0000     D...............
    80016608:	7a03 0052 7c01 0101 0d1b 0002 002c 0000     .zR..|......,...
    80016618:	0018 0000 e5b8 ffff 009c 0000 4400 000e     .............D..
    80016628:	0000 0000 0000 9200 4408 080c 0200 0000     .........D......
    80016638:	0000 020c 4420 44c9 44d2 000e 002c 0000     .... D.D.D..,...
    80016648:	0048 0000 e624 ffff 0090 0000 4400 000e     H...$........D..
    80016658:	0000 0000 0000 9200 4408 080c 0200 0000     .........D......
    80016668:	0000 020c 4420 44c9 44d2 000e 002c 0000     .... D.D.D..,...
    80016678:	0078 0000 e684 ffff 008c 0000 4400 000e     x............D..
    80016688:	0000 0000 0000 9200 4408 080c 0200 0000     .........D......
    80016698:	0000 020c 4420 44c9 44d2 000e 0030 0000     .... D.D.D..0...
    800166a8:	00a8 0000 e6e0 ffff 0088 0000 4400 000e     .............D..
    800166b8:	0000 0000 0000 9200 4408 080c 0000 0000     .........D......
    800166c8:	0000 0c00 2002 c944 d244 0e44 4400 000b     ..... D.D.D..D..
    800166d8:	0018 0000 0000 0000 7a03 4c50 0052 7c01     .........zPLR..|
    800166e8:	0701 759b ff21 1bff 0d1b 0002 0030 0000     ...u!.......0...
    800166f8:	0020 0000 e718 ffff 00e0 0000 3904 ff21      ............9!.
    80016708:	44ff 000e 0000 0000 8900 4406 080c 0200     .D.........D....
    80016718:	0000 0000 020c 4420 44c9 000e 0000 0000     ...... D.D......
    80016728:	0010 0000 0000 0000 7a03 0052 7c01 0101     .........zR..|..
    80016738:	0d1b 0002 0020 0000 0018 0000 ebf8 ffff     .... ...........
    80016748:	0018 0000 4400 100e 8844 4402 000c 0000     .....D..D..D....
    80016758:	0c00 1002 0e44 0000 0020 0000 003c 0000     ....D... ...<...
    80016768:	ebec ffff 0018 0000 4400 100e 8844 4402     .........D..D..D
    80016778:	000c 0000 0c00 1002 0e44 0000 0024 0000     ........D...$...
    80016788:	0060 0000 e768 ffff 002c 0000 4400 000e     `...h...,....D..
    80016798:	0000 8800 4404 080c 0000 0000 0c00 1002     .....D..........
    800167a8:	0e44 0000 0018 0000 0000 0000 7a03 4c50     D............zPL
    800167b8:	0052 7c01 0701 a19b ff20 1bff 0d1b 0002     R..|.... .......
    800167c8:	0028 0000 0020 0000 e750 ffff 0040 0000     (... ...P...@...
    800167d8:	6904 ff20 58ff 000e 0000 8800 4404 080c     .i ..X.......D..
    800167e8:	0000 0000 0c00 1002 0e44 0000 0024 0000     ........D...$...
    800167f8:	00d0 0000 eb70 ffff 0034 0000 4400 000e     ....p...4....D..
    80016808:	0000 8800 4404 080c 0000 0000 0c00 1002     .....D..........
    80016818:	0e44 0000 0028 0000 0074 0000 e73c ffff     D...(...t...<...
    80016828:	0040 0000 1904 ff20 58ff 000e 0000 8800     @..... ..X......
    80016838:	4404 080c 0000 0000 0c00 1002 0e44 0000     .D..........D...
    80016848:	0024 0000 0124 0000 e750 ffff 0028 0000     $...$...P...(...
    80016858:	4400 000e 0000 8800 4404 080c 0000 0000     .D.......D......
    80016868:	0c00 1002 0e44 0000 0024 0000 014c 0000     ....D...$...L...
    80016878:	e750 ffff 0028 0000 4400 000e 0000 8800     P...(....D......
    80016888:	4404 080c 0000 0000 0c00 1002 0e44 0000     .D..........D...
    80016898:	0028 0000 0174 0000 e750 ffff 0040 0000     (...t...P...@...
    800168a8:	4400 000e 0000 0000 8900 4406 080c 0000     .D.........D....
    800168b8:	0000 0c00 2002 c944 0e44 0000 0028 0000     ..... D.D...(...
    800168c8:	01a0 0000 e764 ffff 0040 0000 4400 000e     ....d...@....D..
    800168d8:	0000 0000 8900 4406 080c 0000 0000 0c00     .......D........
    800168e8:	2002 c944 0e44 0000 0028 0000 01cc 0000     . D.D...(.......
    800168f8:	eaa8 ffff 004c 0000 4400 000e 0000 0000     ....L....D......
    80016908:	8900 4406 080c 0000 0000 0c00 2002 c944     ...D......... D.
    80016918:	0e44 0000 0024 0000 01f8 0000 e74c ffff     D...$.......L...
    80016928:	0038 0000 4c00 000e 0000 8800 4404 080c     8....L.......D..
    80016938:	0000 0000 0c00 1002 0e44 0000 0024 0000     ........D...$...
    80016948:	0220 0000 e75c ffff 0028 0000 4400 000e      ...\...(....D..
    80016958:	0000 8800 4404 080c 0000 0000 0c00 1002     .....D..........
    80016968:	0e44 0000 0024 0000 0248 0000 e75c ffff     D...$...H...\...
    80016978:	0028 0000 4400 000e 0000 8800 4404 080c     (....D.......D..
    80016988:	0000 0000 0c00 1002 0e44 0000 0020 0000     ........D... ...
    80016998:	0270 0000 e75c ffff 0040 0000 4400 000e     p...\...@....D..
    800169a8:	0000 0000 0000 9200 4408 080c 0000 0000     .........D......
    800169b8:	0024 0000 0294 0000 e778 ffff 003c 0000     $.......x...<...
    800169c8:	4400 000e 0000 8800 4404 080c 0000 0000     .D.......D......
    800169d8:	0c00 1002 0e44 0000 0024 0000 02bc 0000     ....D...$.......
    800169e8:	e78c ffff 0048 0000 4400 000e 0000 8800     ....H....D......
    800169f8:	4404 080c 0000 0000 0c00 1002 0e44 0000     .D..........D...
    80016a08:	0024 0000 02e4 0000 e7ac ffff 0038 0000     $...........8...
    80016a18:	4c00 000e 0000 8800 4404 080c 0000 0000     .L.......D......
    80016a28:	0c00 1002 0e44 0000 0028 0000 030c 0000     ....D...(.......
    80016a38:	e7bc ffff 004c 0000 4400 000e 0000 0000     ....L....D......
    80016a48:	8900 4406 080c 0000 0000 0c00 2002 c944     ...D......... D.
    80016a58:	0e44 0000 0024 0000 0338 0000 e7dc ffff     D...$...8.......
    80016a68:	0038 0000 4c00 000e 0000 8800 4404 080c     8....L.......D..
    80016a78:	0000 0000 0c00 1002 0e44 0000 0024 0000     ........D...$...
    80016a88:	0360 0000 e7ec ffff 0028 0000 4400 000e     `.......(....D..
    80016a98:	0000 8800 4404 080c 0000 0000 0c00 1002     .....D..........
    80016aa8:	0e44 0000 0024 0000 0388 0000 e7ec ffff     D...$...........
    80016ab8:	0028 0000 4400 000e 0000 8800 4404 080c     (....D.......D..
    80016ac8:	0000 0000 0c00 1002 0e44 0000 0030 0000     ........D...0...
    80016ad8:	03b0 0000 e7ec ffff 0074 0000 4400 000e     ........t....D..
    80016ae8:	0000 0000 0000 9200 4408 080c 0200 0000     .........D......
    80016af8:	0000 020c 4420 44c9 44d2 000e 0000 0000     .... D.D.D......
    80016b08:	0010 0000 0000 0000 7a03 0052 7c01 0101     .........zR..|..
    80016b18:	0d1b 0002 0024 0000 0018 0000 e8c8 ffff     ....$...........
    80016b28:	0028 0000 4400 000e 0000 8800 4404 080c     (....D.......D..
    80016b38:	0000 0000 0c00 1002 0e44 0000 0028 0000     ........D...(...
    80016b48:	0040 0000 e8c8 ffff 0034 0000 4400 000e     @.......4....D..
    80016b58:	0000 8800 4404 080c 0000 0000 0c00 1002     .....D..........
    80016b68:	0e44 0000 0000 0000 0010 0000 0000 0000     D...............
    80016b78:	7a03 0052 7c01 0101 0d1b 0002 0028 0000     .zR..|......(...
    80016b88:	0018 0000 e8bc ffff 0028 0000 4400 000e     ........(....D..
    80016b98:	0000 8800 4404 080c 0000 0000 0c00 1002     .....D..........
    80016ba8:	0e44 0000 0000 0000                         D.......
